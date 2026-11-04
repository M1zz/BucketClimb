//
//  BucketIntents.swift
//  BucketClimb
//
//  Siri · 단축어로 꿈을 담고, 오르는 중인 꿈을 묻는다.
//   - "꿈을 찾아서에 오로라 보기 담아줘": 버킷리스트에 담는다. 기기 안 AI(iOS 26+, Apple Intelligence)가
//     있으면 그 꿈을 작은 첫 단계 3~5개로 나누고 분류까지 붙여 담는다. 없으면 꿈만 담는다.
//     AI 는 기기 안에서만 돈다. 꿈이 밖으로 나가지 않는다.
//   - "꿈을 찾아서 다음 단계": 오르는 중인 꿈의 다음 단계를 알려 준다.
//   - Spotlight: 꿈마다 제목 · 메모 · 단계를 싣는다. 누르면 그 꿈이 열린다.
//

import AppIntents
import CoreSpotlight
import Foundation
#if canImport(FoundationModels)
import FoundationModels
#endif

// MARK: - 꿈 담기

struct AddDreamIntent: AppIntent {
    static let title = LocalizedStringResource("꿈 담기", comment: "Siri: add a bucket list goal")
    static let description = IntentDescription(
        LocalizedStringResource("버킷리스트에 꿈을 담습니다. 가능하면 작은 첫 단계로 나눠 함께 담습니다.", comment: "Siri: add dream description")
    )

    @Parameter(title: LocalizedStringResource("꿈", comment: "Siri: goal parameter"),
               description: LocalizedStringResource("버킷리스트에 담을 꿈. 예: 오로라 보기", comment: "Siri: description of the goal parameter of 'Add a Dream'"),
               requestValueDialog: IntentDialog(LocalizedStringResource("어떤 꿈을 담을까요?", comment: "Siri: ask which goal")))
    var dream: String

    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        let title = dream.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !title.isEmpty else {
            throw $dream.needsValueError(IntentDialog(LocalizedStringResource("어떤 꿈을 담을까요?", comment: "Siri: ask which goal")))
        }
        let plan = await DreamPlanner.plan(title)
        let store = BucketListViewModel.shared
        if plan.steps.isEmpty {
            store.addBucketItem(title: title, category: plan.category)
            return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’을 담았어요.", comment: "Siri: goal added. Argument is the goal")))
        }
        let milestones = plan.steps.map { Milestone(title: $0, description: "", successCriteria: []) }
        store.addBucketItemWithMilestones(title: title, category: plan.category, milestones: milestones)
        return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’을 \(plan.steps.count)단계로 나눠 담았어요. 첫 단계는 ‘\(plan.steps[0])’예요.", comment: "Siri: goal added with steps. Arguments: goal, step count, first step")))
    }
}

// MARK: - 다음 단계

struct NextStepIntent: AppIntent {
    static let title = LocalizedStringResource("다음 단계", comment: "Siri: what's the next step of the goal being climbed")
    static let description = IntentDescription(
        LocalizedStringResource("오르는 중인 꿈의 다음 단계를 알려 줍니다.", comment: "Siri: next step description")
    )

    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        let climbing = BucketListViewModel.shared.climbingBucketLists
        guard let item = climbing.first else {
            return .result(dialog: IntentDialog(LocalizedStringResource("지금 오르는 꿈이 없어요.", comment: "Siri: nothing in progress")))
        }
        guard let next = item.milestones.first(where: { !$0.isCompleted }) else {
            return .result(dialog: IntentDialog(LocalizedStringResource("‘\(item.title)’은 단계를 다 마쳤어요.", comment: "Siri: all steps done. Argument is the goal")))
        }
        return .result(dialog: IntentDialog(LocalizedStringResource("‘\(item.title)’의 다음 단계는 ‘\(next.title)’예요.", comment: "Siri: next step. Arguments: goal, step")))
    }
}

// MARK: - 꿈 (Siri · Spotlight 가 찾는 항목)

/// Siri · Spotlight 가 열어 달라는 꿈. ContentView 가 시트로 열고 비운다.
@MainActor @Observable
final class DreamRouter {
    static let shared = DreamRouter()
    var dreamID: UUID?
}

struct DreamEntity: AppEntity, IndexedEntity {
    static let typeDisplayRepresentation = TypeDisplayRepresentation(
        name: LocalizedStringResource("꿈", comment: "Siri/Spotlight: one bucket list goal")
    )
    static let defaultQuery = DreamQuery()

    let id: UUID
    let title: String
    let status: String
    /// 메모와 단계 제목. 검색 · 색인에 쓴다.
    let text: String

    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(title)", subtitle: "\(status)")
    }

    var attributeSet: CSSearchableItemAttributeSet {
        let set = defaultAttributeSet
        set.textContent = text
        return set
    }

    init(_ item: BucketListItem) {
        id = item.id
        title = item.title.localizedBucket
        status = item.status.displayName
        text = ([item.notes] + item.milestones.map { $0.title.localizedBucket })
            .filter { !$0.isEmpty }.joined(separator: "\n")
    }

    /// 앱 안의 모든 꿈. 화면과 같은 목록을 읽는다.
    @MainActor static func all() -> [DreamEntity] {
        BucketListViewModel.shared.bucketItems.map(DreamEntity.init)
    }

    /// 제목 · 메모 · 단계에서 찾는다(대소문자 · 악센트 무시).
    @MainActor static func search(_ raw: String) -> [DreamEntity] {
        let query = raw.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !query.isEmpty else { return [] }
        func matches(_ s: String) -> Bool { s.range(of: query, options: [.caseInsensitive, .diacriticInsensitive]) != nil }
        return all().filter { matches($0.title) || matches($0.text) }
    }

    /// Spotlight 에 싣는 꿈을 지금 것에 맞춘다. 앱을 열 때와 뒤로 보낼 때 부른다.
    @MainActor static func reindex() async {
        let index = CSSearchableIndex.default()
        try? await index.deleteAppEntities(ofType: DreamEntity.self)
        try? await index.indexAppEntities(all())
    }
}

struct DreamQuery: EntityStringQuery {
    @MainActor
    func entities(for identifiers: [UUID]) async throws -> [DreamEntity] {
        let wanted = Set(identifiers)
        return DreamEntity.all().filter { wanted.contains($0.id) }
    }

    @MainActor
    func entities(matching string: String) async throws -> [DreamEntity] {
        DreamEntity.search(string)
    }

    /// 오르는 중인 꿈부터.
    @MainActor
    func suggestedEntities() async throws -> [DreamEntity] {
        let items = BucketListViewModel.shared.bucketItems
        return (items.filter { $0.status == .climbing } + items.filter { $0.status != .climbing }).map(DreamEntity.init)
    }
}

/// 꿈을 연다. Spotlight · Siri 결과를 누르면 여기로 온다.
struct OpenDreamIntent: OpenIntent {
    static let title = LocalizedStringResource("꿈 열기", comment: "Siri/Spotlight: open a bucket list goal")
    static let description = IntentDescription(
        LocalizedStringResource("고른 꿈의 단계와 기록을 엽니다.", comment: "Siri: open dream description")
    )

    @Parameter(title: LocalizedStringResource("꿈", comment: "Siri: goal parameter"),
               description: LocalizedStringResource("열어 볼 꿈", comment: "Siri: description of the goal parameter of 'Open a Dream'"))
    var target: DreamEntity

    init() {}

    @MainActor
    func perform() async throws -> some IntentResult {
        DreamRouter.shared.dreamID = target.id
        return .result()
    }
}

struct BucketClimbShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: AddDreamIntent(),
            phrases: [
                "Add a dream to \(.applicationName)",
                "New bucket list goal in \(.applicationName)"
            ],
            shortTitle: "Add a Dream",
            systemImageName: "plus.circle"
        )
        AppShortcut(
            intent: NextStepIntent(),
            phrases: [
                "\(.applicationName) next step",
                "What’s my next step in \(.applicationName)"
            ],
            shortTitle: "Next Step",
            systemImageName: "figure.climbing"
        )
    }
}

// MARK: - 기기 안 AI 로 첫 단계 나누기

enum DreamPlanner {
    struct Plan {
        var category: BucketCategory = .experience
        var steps: [String] = []
    }

    static func plan(_ dream: String) async -> Plan {
        #if canImport(FoundationModels)
        if #available(iOS 26.0, *), SystemLanguageModel.default.isAvailable,
           let made = try? await ModelPlanner.make(dream) {
            return made
        }
        #endif
        return Plan()
    }
}

#if canImport(FoundationModels)
@available(iOS 26.0, *)
@Generable
private struct GeneratedPlan {
    @Guide(description: "The best category for this goal.", .anyOf(BucketCategory.allCases.map(\.rawValue)))
    var category: String
    @Guide(description: "Small, concrete first steps toward the goal, in order. Each is a short action the person can start this month, under 25 characters.", .count(3...5))
    var steps: [String]
}

@available(iOS 26.0, *)
private enum ModelPlanner {
    static func make(_ dream: String) async throws -> DreamPlanner.Plan {
        let language = Locale(identifier: "en").localizedString(forLanguageCode: Locale.current.language.languageCode?.identifier ?? "ko") ?? "Korean"
        let session = LanguageModelSession(instructions: """
            You help someone turn a life goal into small first steps they can actually start.
            Be practical and specific. Never invent facts about the person. Write the steps in \(language).
            """)
        let result = try await session.respond(to: "Goal: \(dream)", generating: GeneratedPlan.self).content
        return DreamPlanner.Plan(
            category: BucketCategory(rawValue: result.category) ?? .experience,
            steps: result.steps.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }.filter { !$0.isEmpty }
        )
    }
}
#endif
