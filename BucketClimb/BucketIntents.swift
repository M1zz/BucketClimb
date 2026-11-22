//
//  BucketIntents.swift
//  BucketClimb
//
//  Siri · 단축어로 목표를 추가하고, 진행 중인 목표의 다음 단계를 묻는다.
//   - 목표 추가: 기기 안 AI(iOS 26+, Apple Intelligence)가 있으면 그 목표를 작은 첫 단계 3~5개로 나누고
//     분류까지 붙여 추가한다. 없으면 목표만 추가한다. AI 는 기기 안에서만 돈다. 목표가 밖으로 나가지 않는다.
//   - 다음 단계: 진행 중인 목표의 다음 단계를 알려 준다.
//   - Spotlight: 목표마다 제목 · 메모 · 단계를 싣는다. 누르면 그 목표가 열린다.
//

import AppIntents
import CoreSpotlight
import Foundation
#if canImport(FoundationModels)
import FoundationModels
#endif

// MARK: - 목표 추가

struct AddGoalIntent: AppIntent {
    static let title = LocalizedStringResource("목표 추가", comment: "Siri: add a goal")
    static let description = IntentDescription(
        LocalizedStringResource("목표를 추가합니다. 가능하면 작은 첫 단계로 나눠 함께 추가합니다.", comment: "Siri: add goal description")
    )

    @Parameter(title: LocalizedStringResource("목표", comment: "Siri: goal parameter"),
               description: LocalizedStringResource("추가할 목표. 예: 오로라 보기", comment: "Siri: description of the goal parameter of 'Add a Goal'"),
               requestValueDialog: IntentDialog(LocalizedStringResource("어떤 목표를 추가할까요?", comment: "Siri: ask which goal")))
    var goal: String

    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        let title = goal.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !title.isEmpty else {
            throw $goal.needsValueError(IntentDialog(LocalizedStringResource("어떤 목표를 추가할까요?", comment: "Siri: ask which goal")))
        }
        // 무료 한도가 다 찼으면 추가하지 않고 알린다. 영수증을 먼저 읽어 Pro 인 사람을 막지 않는다.
        await ProStore.shared.refreshEntitlements()
        guard ProStore.shared.canTakeAnotherGoal else {
            return .result(dialog: IntentDialog(LocalizedStringResource("무료로는 목표를 \(ProStore.freeGoalLimit)개까지 둘 수 있습니다. Pro에서는 제한이 없습니다.", comment: "Siri: the free limit of open goals is full. Argument is the limit")))
        }
        let plan = await GoalPlanner.plan(title)
        BucketListViewModel.shared.addGoal(title: title, category: plan.category, steps: plan.steps, start: true)
        if plan.steps.isEmpty {
            return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’을 추가했습니다.", comment: "Siri: goal added. Argument is the goal")))
        }
        return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’을 \(plan.steps.count)단계로 나눠 추가했습니다. 첫 단계는 ‘\(plan.steps[0])’입니다.", comment: "Siri: goal added with steps. Arguments: goal, step count, first step")))
    }
}

// MARK: - 다음 단계

struct NextStepIntent: AppIntent {
    static let title = LocalizedStringResource("다음 단계", comment: "Siri: what's the next step of the goal in progress")
    static let description = IntentDescription(
        LocalizedStringResource("진행 중인 목표의 다음 단계를 알려 줍니다.", comment: "Siri: next step description")
    )

    @MainActor
    func perform() async throws -> some IntentResult & ProvidesDialog {
        guard let item = BucketListViewModel.shared.openGoals.first(where: { $0.nextStep != nil }) ?? BucketListViewModel.shared.openGoals.first else {
            return .result(dialog: IntentDialog(LocalizedStringResource("진행 중인 목표가 없습니다.", comment: "Siri: nothing in progress")))
        }
        let title = item.title.localizedBucket
        guard let next = item.nextStep else {
            return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’은 단계를 모두 마쳤습니다.", comment: "Siri: all steps done. Argument is the goal")))
        }
        return .result(dialog: IntentDialog(LocalizedStringResource("‘\(title)’의 다음 단계는 ‘\(next.title.localizedBucket)’입니다.", comment: "Siri: next step. Arguments: goal, step")))
    }
}

// MARK: - 목표 (Siri · Spotlight 가 찾는 항목)

/// Siri · Spotlight 가 열어 달라는 목표. ContentView 가 시트로 열고 비운다.
@MainActor @Observable
final class GoalRouter {
    static let shared = GoalRouter()
    var goalID: UUID?
}

struct GoalEntity: AppEntity, IndexedEntity {
    static let typeDisplayRepresentation = TypeDisplayRepresentation(
        name: LocalizedStringResource("목표", comment: "Siri/Spotlight: one goal")
    )
    static let defaultQuery = GoalQuery()

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
        status = item.isAbandoned ? String(localized: "그만둠", comment: "Status of a goal the person stopped pursuing") : item.status.displayName
        text = ([item.notes] + item.milestones.map { $0.title.localizedBucket })
            .filter { !$0.isEmpty }.joined(separator: "\n")
    }

    /// 앱 안의 모든 목표. 화면과 같은 목록을 읽는다.
    @MainActor static func all() -> [GoalEntity] {
        BucketListViewModel.shared.bucketItems.map(GoalEntity.init)
    }

    /// 제목 · 메모 · 단계에서 찾는다(대소문자 · 악센트 무시).
    @MainActor static func search(_ raw: String) -> [GoalEntity] {
        let query = raw.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !query.isEmpty else { return [] }
        func matches(_ s: String) -> Bool { s.range(of: query, options: [.caseInsensitive, .diacriticInsensitive]) != nil }
        return all().filter { matches($0.title) || matches($0.text) }
    }

    /// Spotlight 에 싣는 목표를 지금 것에 맞춘다. 앱을 열 때와 뒤로 보낼 때 부른다.
    @MainActor static func reindex() async {
        let index = CSSearchableIndex.default()
        try? await index.deleteAppEntities(ofType: GoalEntity.self)
        try? await index.indexAppEntities(all())
    }
}

struct GoalQuery: EntityStringQuery {
    @MainActor
    func entities(for identifiers: [UUID]) async throws -> [GoalEntity] {
        let wanted = Set(identifiers)
        return GoalEntity.all().filter { wanted.contains($0.id) }
    }

    @MainActor
    func entities(matching string: String) async throws -> [GoalEntity] {
        GoalEntity.search(string)
    }

    /// 진행 중인 목표부터.
    @MainActor
    func suggestedEntities() async throws -> [GoalEntity] {
        let items = BucketListViewModel.shared.bucketItems
        return (items.filter { $0.status != .completed } + items.filter { $0.status == .completed }).map(GoalEntity.init)
    }
}

/// 목표를 연다. Spotlight · Siri 결과를 누르면 여기로 온다.
struct OpenGoalIntent: OpenIntent {
    static let title = LocalizedStringResource("목표 열기", comment: "Siri/Spotlight: open a goal")
    static let description = IntentDescription(
        LocalizedStringResource("고른 목표의 단계와 기록을 엽니다.", comment: "Siri: open goal description")
    )

    @Parameter(title: LocalizedStringResource("목표", comment: "Siri: goal parameter"),
               description: LocalizedStringResource("열어 볼 목표", comment: "Siri: description of the goal parameter of 'Open a Goal'"))
    var target: GoalEntity

    init() {}

    @MainActor
    func perform() async throws -> some IntentResult {
        GoalRouter.shared.goalID = target.id
        return .result()
    }
}

struct BucketClimbShortcuts: AppShortcutsProvider {
    static var appShortcuts: [AppShortcut] {
        AppShortcut(
            intent: AddGoalIntent(),
            phrases: [
                "Add a goal to \(.applicationName)",
                "New goal in \(.applicationName)"
            ],
            shortTitle: "Add a Goal",
            systemImageName: "plus.circle"
        )
        AppShortcut(
            intent: NextStepIntent(),
            phrases: [
                "\(.applicationName) next step",
                "What’s my next step in \(.applicationName)"
            ],
            shortTitle: "Next Step",
            systemImageName: "checklist"
        )
    }
}

// MARK: - 기기 안 AI 로 첫 단계 나누기

enum GoalPlanner {
    struct Plan {
        var category: BucketCategory = .experience
        var steps: [String] = []
    }

    /// 이 기기에서 단계를 제안받을 수 있는가. 안 되면 제안 단추를 세우지 않는다.
    static var isAvailable: Bool {
        #if canImport(FoundationModels)
        if #available(iOS 26.0, *) {
            // 앱 언어를 이 기기의 모델이 못 쓰면(예: 아랍어를 아직 모르는 모델) 다른 언어로 답이 오므로 단추를 세우지 않는다.
            return SystemLanguageModel.default.isAvailable
                && SystemLanguageModel.default.supportsLocale(Locale(identifier: GoalPlanner.appLanguage))
        }
        #endif
        return false
    }

    /// 앱 화면의 언어 코드. 단계는 화면과 같은 언어로 받는다.
    static var appLanguage: String { Bundle.main.preferredLocalizations.first ?? "en" }

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
    static func make(_ dream: String) async throws -> GoalPlanner.Plan {
        let language = Locale(identifier: "en").localizedString(forIdentifier: GoalPlanner.appLanguage) ?? "English"
        let session = LanguageModelSession(instructions: """
            You help someone turn a life goal into small first steps they can actually start.
            Be practical and specific. Never invent facts about the person. Write the steps in \(language).
            """)
        let result = try await session.respond(to: "Goal: \(dream)", generating: GeneratedPlan.self).content
        return GoalPlanner.Plan(
            category: BucketCategory(rawValue: result.category) ?? .experience,
            steps: result.steps.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }.filter { !$0.isEmpty }
        )
    }
}
#endif
