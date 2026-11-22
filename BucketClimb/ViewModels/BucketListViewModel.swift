import Foundation
import SwiftUI
import OSLog

class BucketListViewModel: ObservableObject {
    /// 앱 화면과 Siri 인텐트가 같은 목록을 쓴다 (→ BucketIntents.swift).
    @MainActor static let shared = BucketListViewModel()

    @Published var bucketItems: [BucketListItem] = []
    /// 첫 실행 화면(첫 목표 입력)을 지났는가.
    @Published var hasCompletedOnboarding: Bool = false {
        didSet {
            UserDefaults.standard.set(hasCompletedOnboarding, forKey: "HasCompletedOnboarding")
        }
    }

    private let saveKey = "SavedBucketList"

    init() {
        loadData()
        fillCatalogSteps()
        // 목표가 이미 있는 사람에게는 첫 실행 화면을 보이지 않는다.
        hasCompletedOnboarding = UserDefaults.standard.bool(forKey: "HasCompletedOnboarding") || !bucketItems.isEmpty
        #if DEBUG
        if ScreenshotSeed.isOn { ScreenshotSeed.apply(to: self) }
        #endif
        GoalReminders.sync(bucketItems)
    }

    func completeOnboarding() {
        hasCompletedOnboarding = true
    }

    // MARK: - 목록

    /// 완료하지 않은 목표, 추가한 순서로. 예전 판의 '시작 전' · '진행 중' 을 가리지 않는다.
    var openGoals: [BucketListItem] {
        bucketItems.filter { $0.status != .completed }.sorted { $0.dateAdded < $1.dateAdded }
    }

    /// 완료한 목표, 최근에 완료한 것부터.
    var doneGoals: [BucketListItem] {
        bucketItems.filter { $0.status == .completed && !$0.isAbandoned }
            .sorted { ($0.dateCompleted ?? .distantPast) > ($1.dateCompleted ?? .distantPast) }
    }

    /// 그만둔 목표. 저장 형식에서는 완료 상태에 `isAbandoned` 가 붙어 있다.
    var stoppedGoals: [BucketListItem] {
        bucketItems.filter { $0.status == .completed && $0.isAbandoned }
            .sorted { ($0.dateCompleted ?? .distantPast) > ($1.dateCompleted ?? .distantPast) }
    }

    /// 완료하지 않은 목표 수. 무료 한도가 세는 값이다 (→ ProStore.canTakeAnotherGoal).
    var openGoalCount: Int {
        bucketItems.filter { $0.status != .completed }.count
    }

    var doneStepCount: Int {
        bucketItems.reduce(0) { $0 + $1.doneStepCount }
    }

    // MARK: - 목표

    /// 고친 뒤 화면을 다시 그리고 저장한다. 목표는 참조 타입이라 배열이 바뀐 것으로 잡히지 않는다.
    private func change(_ item: BucketListItem, _ body: (BucketListItem) -> Void) {
        objectWillChange.send()
        body(item)
        saveData()
    }

    /// 단계 하나를 고친다.
    private func changeStep(_ item: BucketListItem, _ stepID: UUID, _ body: (inout Milestone) -> Void) {
        guard let index = item.milestones.firstIndex(where: { $0.id == stepID }) else { return }
        change(item) { body(&$0.milestones[index]) }
    }

    @discardableResult
    func addGoal(title: String, category: BucketCategory, steps: [String] = [], location: LocationInfo? = nil,
                 start: Bool = true) -> BucketListItem {
        let item = BucketListItem(title: title, category: category, location: location)
        item.milestones = steps.map { Milestone(title: $0, description: "", successCriteria: []) }
        if start {
            item.status = .climbing
            item.dateStarted = Date()
        }
        bucketItems.append(item)
        saveData()
        return item
    }

    func complete(_ item: BucketListItem) {
        change(item) {
            $0.status = .completed
            $0.dateCompleted = Date()
            $0.isAbandoned = false
        }
    }

    /// 그만둔다. 단계와 기록은 그대로 남고 완료 탭의 '그만둔 목표'로 옮겨 간다.
    func stop(_ item: BucketListItem) {
        change(item) {
            $0.status = .completed
            $0.dateCompleted = Date()
            $0.isAbandoned = true
        }
    }

    /// 완료했거나 그만둔 목표를 다시 진행 중으로 돌린다.
    func resume(_ item: BucketListItem) {
        change(item) {
            $0.status = .climbing
            $0.dateStarted = $0.dateStarted ?? Date()
            $0.dateCompleted = nil
            $0.isAbandoned = false
            $0.touchedAt = Date()
        }
    }

    /// 오래 손대지 않은 목표를 계속하기로 한다. 한 달 뒤에 다시 묻는다.
    func keep(_ item: BucketListItem) {
        change(item) { $0.touchedAt = Date() }
    }

    func delete(_ item: BucketListItem) {
        bucketItems.removeAll { $0.id == item.id }
        saveData()
    }

    func rename(_ item: BucketListItem, to title: String) {
        change(item) { $0.title = title }
    }

    // MARK: - 구체화

    /// 빈칸 하나의 답을 적는다. 비우면 빈칸으로 돌아간다.
    func setAnswer(_ item: BucketListItem, _ blank: GoalBlank, _ text: String) {
        let text = text.trimmingCharacters(in: .whitespacesAndNewlines)
        guard text != item.answer(blank) else { return }
        change(item) {
            $0.answers[blank.rawValue] = text.isEmpty ? nil : text
            $0.touchedAt = Date()
        }
    }

    // MARK: - 단계

    func addStep(_ item: BucketListItem, title: String) {
        change(item) {
            $0.milestones.append(Milestone(title: title, description: "", successCriteria: []))
            $0.touchedAt = Date()
        }
    }

    func addSteps(_ item: BucketListItem, titles: [String]) {
        change(item) {
            $0.milestones += titles.map { Milestone(title: $0, description: "", successCriteria: []) }
            $0.touchedAt = Date()
        }
    }

    /// 단계를 마치거나 되돌린다. 마치면 그 단계의 체크 항목도 함께 마친다.
    func toggleStep(_ item: BucketListItem, _ stepID: UUID) {
        changeStep(item, stepID) { step in
            step.isCompleted.toggle()
            step.completedDate = step.isCompleted ? Date() : nil
            guard step.isCompleted else { return }
            for index in step.checklist.indices where !step.checklist[index].isCompleted {
                step.checklist[index].isCompleted = true
                step.checklist[index].completedDate = Date()
            }
        }
    }

    func renameStep(_ item: BucketListItem, _ stepID: UUID, to title: String) {
        changeStep(item, stepID) { $0.title = title }
    }

    func deleteSteps(_ item: BucketListItem, at offsets: IndexSet) {
        change(item) { $0.milestones.remove(atOffsets: offsets) }
    }

    func moveSteps(_ item: BucketListItem, from offsets: IndexSet, to destination: Int) {
        change(item) { $0.milestones.move(fromOffsets: offsets, toOffset: destination) }
    }

    // MARK: - 기록

    func addRecord(_ item: BucketListItem, text: String, photos: [String]) {
        change(item) { $0.records.append(ProgressRecord(note: text, photos: photos)) }
    }

    func deleteRecord(_ item: BucketListItem, _ recordID: UUID) {
        change(item) { item in
            for photo in item.records.first(where: { $0.id == recordID })?.photos ?? [] {
                GoalPhotos.delete(photo)
            }
            item.records.removeAll { $0.id == recordID }
        }
    }

    // MARK: - 예전 추천 목록

    /// 예전 판의 추천 목록에서 고른 목표라면 그 목록에 딸린 단계를 돌려준다. 아니면 빈 배열.
    private func getMilestonesForBucket(title: String, category: BucketCategory) -> [Milestone] {
        // 분류별 enum에서 같은 제목의 항목을 찾아 그 단계를 돌려준다
        let bucketItem = getBucketItem(title: title, category: category)
        if let item = bucketItem, item.hasCustomMilestones {
            return item.milestones
        }
        return []
    }

    private func getBucketItem(title: String, category: BucketCategory) -> BucketItem? {
        switch category {
        case .travel:
            if let bucket = TravelBucket.allCases.first(where: { $0.rawValue == title }) {
                return .travel(bucket)
            }
        case .experience:
            if let bucket = ExperienceBucket.allCases.first(where: { $0.rawValue == title }) {
                return .experience(bucket)
            }
        case .achievement:
            if let bucket = AchievementBucket.allCases.first(where: { $0.rawValue == title }) {
                return .achievement(bucket)
            }
        case .health:
            if let bucket = HealthBucket.allCases.first(where: { $0.rawValue == title }) {
                return .health(bucket)
            }
        case .learning:
            if let bucket = LearningBucket.allCases.first(where: { $0.rawValue == title }) {
                return .learning(bucket)
            }
        case .relationship:
            if let bucket = RelationshipBucket.allCases.first(where: { $0.rawValue == title }) {
                return .relationship(bucket)
            }
        }
        return nil
    }

    func saveData() {
        if let encoded = try? JSONEncoder().encode(bucketItems) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
        GoalReminders.sync(bucketItems)
    }

    private func loadData() {
        guard let savedData = UserDefaults.standard.data(forKey: saveKey) else { return }
        guard let decoded = try? JSONDecoder().decode([BucketListItem].self, from: savedData) else {
            // 못 읽은 원본을 옆에 남긴다 — 빈 목록으로 시작해 다음 저장이 덮어써도 되찾을 수 있게
            UserDefaults.standard.set(savedData, forKey: saveKey + ".unreadable")
            return
        }
        bucketItems = decoded
    }

    /// 예전 판에서 추천 목록의 목표를 담아만 두고 시작하지 않았으면 단계가 비어 있다. 그 목록의 단계를 채운다.
    private func fillCatalogSteps() {
        var changed = false
        for item in bucketItems where item.status == .inBucket && item.milestones.isEmpty {
            let steps = getMilestonesForBucket(title: item.title, category: item.category)
            if !steps.isEmpty {
                item.milestones = steps
                changed = true
            }
        }
        if changed { saveData() }
    }
}

// MARK: - 기록 내보내기 (무료)

extension BucketListViewModel {
    /// 목표 · 단계 · 기록을 사람이 읽는 글 한 덩이로. 설정에서 공유 시트로 내보낸다.
    /// 기본 내보내기라 잠그지 않는다. 사진은 파일 이름만 있어 글에서 뺀다.
    var exportText: String {
        let date = { (d: Date) in d.dayText }
        var lines = [String(localized: "목표 기록", comment: "Export: title of the exported text"), date(Date())]
        let ordered = bucketItems.filter { $0.status != .completed } + doneGoals + stoppedGoals
        for item in ordered {
            lines.append("")
            lines.append("■ " + item.title.localizedBucket)
            let state = item.isAbandoned ? String(localized: "그만둠", comment: "Status of a goal the person stopped pursuing") : item.status.displayName
            lines.append(state)
            var dates = [String(localized: "추가한 날 \(date(item.dateAdded))", comment: "Export: date the goal was added")]
            if let done = item.dateCompleted, !item.isAbandoned {
                dates.append(String(localized: "완료한 날 \(date(done))", comment: "Export: date the goal was completed"))
            }
            lines.append(dates.joined(separator: " · "))
            for blank in GoalBlank.allCases where !item.answer(blank).isEmpty {
                lines.append(blank.question + " " + item.answer(blank))
            }
            if !item.milestones.isEmpty {
                lines.append(String(localized: "단계"))
                for step in item.milestones {
                    var line = (step.isCompleted ? "✓ " : "○ ") + step.title.localizedBucket
                    if let done = step.completedDate, step.isCompleted {
                        line += " (\(date(done)))"
                    }
                    lines.append(line)
                }
            }
            let timeline = item.timeline
            if !timeline.isEmpty {
                lines.append(String(localized: "기록"))
                for record in timeline.reversed() where !record.text.isEmpty {
                    let head = [record.date.map(date), record.step?.localizedBucket].compactMap { $0 }.joined(separator: " · ")
                    lines.append(head.isEmpty ? record.text : head + " — " + record.text)
                }
            }
        }
        return lines.joined(separator: "\n")
    }
}
