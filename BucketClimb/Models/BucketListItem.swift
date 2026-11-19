import Foundation
import SwiftUI
import MapKit

struct LocationInfo: Codable {
    var latitude: Double
    var longitude: Double
    var name: String
    var address: String?

    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

enum BucketCategory: String, Codable, CaseIterable {
    case travel = "여행"
    case experience = "경험"
    case achievement = "성취"
    case relationship = "관계"
    case health = "건강"
    case learning = "배움"

    /// 화면용 이름. rawValue 는 저장 데이터라 바꾸지 않는다.
    var displayName: String {
        switch self {
        case .travel: return String(localized: "여행")
        case .experience: return String(localized: "경험")
        case .achievement: return String(localized: "성취")
        case .relationship: return String(localized: "관계")
        case .health: return String(localized: "건강")
        case .learning: return String(localized: "배움")
        }
    }

    var icon: String {
        switch self {
        case .travel: return "airplane"
        case .experience: return "star.fill"
        case .achievement: return "trophy.fill"
        case .relationship: return "heart.fill"
        case .health: return "heart.circle.fill"
        case .learning: return "book.fill"
        }
    }
    
    var color: Color {
        switch self {
        case .travel: return .blue
        case .experience: return .purple
        case .achievement: return .yellow
        case .relationship: return .pink
        case .health: return .red
        case .learning: return .green
        }
    }
}

/// rawValue 는 저장 데이터라 바꾸지 않는다. 화면에는 `displayName` 만 쓴다.
enum BucketStatus: String, Codable {
    case inBucket = "버킷에 담김"
    case climbing = "등반 중"
    case completed = "완료"

    var displayName: String {
        switch self {
        case .inBucket: return String(localized: "시작 전")
        case .climbing: return String(localized: "진행 중")
        case .completed: return String(localized: "완료")
        }
    }
}

struct Obstacle: Identifiable, Codable, Hashable {
    var id = UUID()
    var type: ObstacleType
    var description: String
    var currentValue: Double
    var targetValue: Double
    var unit: String
    var relatedMilestoneId: UUID?
    var customNote: String?

    var progress: Double {
        guard targetValue > 0 else { return 0 }
        return min(currentValue / targetValue * 100, 100)
    }

    var isCleared: Bool {
        currentValue >= targetValue
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Obstacle, rhs: Obstacle) -> Bool {
        lhs.id == rhs.id
    }
}

enum ObstacleType: String, Codable, CaseIterable {
    case money = "💰 비용"
    case time = "⏰ 시간"
    case skill = "💪 체력/스킬"
    case knowledge = "📚 지식"
    case timing = "📅 타이밍"

    var displayName: String {
        switch self {
        case .money: return String(localized: "비용")
        case .time: return String(localized: "시간")
        case .skill: return String(localized: "체력 · 기술")
        case .knowledge: return String(localized: "지식")
        case .timing: return String(localized: "시기")
        }
    }

    var icon: String {
        switch self {
        case .money: return "banknote"
        case .time: return "clock"
        case .skill: return "figure.strengthtraining.traditional"
        case .knowledge: return "book"
        case .timing: return "calendar"
        }
    }

    /// 새 장애물을 만들 때 채워 두는 단위. 저장 값이라 한국어 그대로 두고 화면에서만 옮긴다 (→ GoalMoney.unit).
    var defaultUnit: String {
        switch self {
        case .money: return "원"
        case .time: return "시간"
        case .skill: return "일"
        case .knowledge: return "완료"
        case .timing: return "완료"
        }
    }
}

struct ProgressRecord: Identifiable, Codable, Hashable {
    var id = UUID()
    var date: Date
    var note: String
    var photos: [String] // 사진 파일 이름들
    /// 이 기록이 붙은 단계. 목표 전체에 남긴 기록이면 nil.
    var stepID: UUID?

    init(id: UUID = UUID(), date: Date = Date(), note: String = "", photos: [String] = [], stepID: UUID? = nil) {
        self.id = id
        self.date = date
        self.note = note
        self.photos = photos
        self.stepID = stepID
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: ProgressRecord, rhs: ProgressRecord) -> Bool {
        lhs.id == rhs.id
    }
}

struct ChecklistItem: Identifiable, Codable, Hashable {
    var id = UUID()
    var text: String
    var isCompleted: Bool = false
    var evidence: String? = nil  // 완료 근거/배운 점
    var completedDate: Date? = nil  // 완료 일시
    var progressRecords: [ProgressRecord] = []  // 진행 과정 기록

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: ChecklistItem, rhs: ChecklistItem) -> Bool {
        lhs.id == rhs.id
    }
}

struct Milestone: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String
    var description: String
    var successCriteria: [String] // 기존 호환성 유지
    var checklist: [ChecklistItem] // 새로운 체크리스트
    var isCompleted: Bool = false
    var completedDate: Date?
    var deadline: Date? // 데드라인
    var progressRecords: [ProgressRecord] = []  // 마일스톤 전체 진행 기록

    init(id: UUID = UUID(), title: String, description: String, successCriteria: [String], isCompleted: Bool = false, completedDate: Date? = nil, deadline: Date? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.successCriteria = successCriteria
        // successCriteria를 checklist로 자동 변환
        self.checklist = successCriteria.map { ChecklistItem(text: $0, isCompleted: false) }
        self.isCompleted = isCompleted
        self.completedDate = completedDate
        self.deadline = deadline
        self.progressRecords = []
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Milestone, rhs: Milestone) -> Bool {
        lhs.id == rhs.id
    }

    // 모든 체크리스트가 완료되었는지 확인
    var allChecklistCompleted: Bool {
        !checklist.isEmpty && checklist.allSatisfy { $0.isCompleted }
    }

    // 체크리스트 진행률
    var checklistProgress: Double {
        guard !checklist.isEmpty else { return 0 }
        let completed = checklist.filter { $0.isCompleted }.count
        return Double(completed) / Double(checklist.count)
    }

    // 데드라인 상태
    var deadlineStatus: DeadlineStatus {
        guard let deadline = deadline else { return .none }
        let now = Date()
        let calendar = Calendar.current

        if isCompleted {
            return .completed
        }

        // 날짜끼리 센다. 시각까지 재면 사흘 뒤 마감이 "D-2" 로 보인다.
        let daysRemaining = calendar.dateComponents([.day], from: calendar.startOfDay(for: now),
                                                    to: calendar.startOfDay(for: deadline)).day ?? 0

        if daysRemaining < 0 {
            return .overdue
        } else if daysRemaining == 0 {
            return .today
        } else if daysRemaining <= 3 {
            return .soon(days: daysRemaining)
        } else {
            return .upcoming(days: daysRemaining)
        }
    }
}

enum DeadlineStatus {
    case none
    case completed
    case overdue
    case today
    case soon(days: Int)
    case upcoming(days: Int)

    var color: Color {
        switch self {
        case .none: return .gray
        case .completed: return .green
        case .overdue: return .red
        case .today: return .orange
        case .soon: return .yellow
        case .upcoming: return .blue
        }
    }

    var text: String {
        switch self {
        case .none: return ""
        case .completed: return String(localized: "완료됨")
        case .overdue: return String(localized: "기한 초과")
        case .today: return String(localized: "오늘까지")
        case .soon(let days): return "D-\(days)"
        case .upcoming(let days): return "D-\(days)"
        }
    }
}

struct DailyProgress: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var action: String
    var distance: Double
}

/// 목표를 구체화하는 빈칸. 목표마다 여섯 가지를 묻는다. rawValue 는 저장에 쓰이므로 바꾸지 않는다.
enum GoalBlank: String, CaseIterable, Identifiable {
    case when, who, how, whyNot, obstacle, value

    var id: String { rawValue }

    var question: String {
        switch self {
        case .when: return String(localized: "언제 할 건가요?")
        case .who: return String(localized: "누구와 할 건가요?")
        case .how: return String(localized: "어떻게 할 건가요?")
        case .whyNot: return String(localized: "지금은 왜 못 하나요?")
        case .obstacle: return String(localized: "지금 장애물은 무엇인가요?")
        case .value: return String(localized: "나에게 얼마나 가치 있는 일인가요?")
        }
    }
}

class BucketListItem: Identifiable, Codable, ObservableObject {
    var id = UUID()
    @Published var title: String
    @Published var category: BucketCategory
    @Published var status: BucketStatus
    @Published var dateAdded: Date
    @Published var dateStarted: Date?
    @Published var dateCompleted: Date?
    @Published var obstacles: [Obstacle]
    @Published var milestones: [Milestone]
    @Published var dailyProgress: [DailyProgress]
    @Published var notes: String
    @Published var photos: [String]
    @Published var mountainHeight: Double
    @Published var thumbnail: String
    @Published var backgroundImage: String?
    @Published var location: LocationInfo?
    @Published var milestonesPhaseCompleted: Bool
    @Published var isAbandoned: Bool
    /// 목표에 남긴 기록(메모 · 사진). 예전 판이 `notes` · 단계 안 · `dailyProgress` 에 적은 기록은
    /// 그대로 두고 `timeline` 이 함께 읽는다.
    @Published var records: [ProgressRecord]
    /// 마지막으로 손댄 때: 단계를 더했거나, 다시 시작했거나, '계속하기'를 고른 때. 단계 체크와 기록은 제 날짜를 따로 갖는다.
    @Published var touchedAt: Date?
    /// 목표를 구체화하는 빈칸의 답. 열쇠는 `GoalBlank` 의 rawValue.
    @Published var answers: [String: String] = [:]

    init(title: String, category: BucketCategory, mountainHeight: Double = 8.8, thumbnail: String? = nil, backgroundImage: String? = nil, location: LocationInfo? = nil) {
        self.title = title
        self.category = category
        self.status = .inBucket
        self.dateAdded = Date()
        self.obstacles = []
        self.milestones = []
        self.dailyProgress = []
        self.notes = ""
        self.photos = []
        self.mountainHeight = mountainHeight
        self.thumbnail = thumbnail ?? category.icon
        self.backgroundImage = backgroundImage ?? "bucket_default"
        self.location = location
        self.milestonesPhaseCompleted = false
        self.isAbandoned = false
        self.records = []
    }

    enum CodingKeys: String, CodingKey {
        case id, title, category, status, dateAdded, dateStarted, dateCompleted
        case obstacles, milestones, dailyProgress, notes, photos, mountainHeight, thumbnail, backgroundImage, location, milestonesPhaseCompleted, isAbandoned, records, touchedAt, answers
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(UUID.self, forKey: .id)
        title = try container.decode(String.self, forKey: .title)
        let decodedCategory = try container.decode(BucketCategory.self, forKey: .category)
        category = decodedCategory
        status = try container.decode(BucketStatus.self, forKey: .status)
        dateAdded = try container.decode(Date.self, forKey: .dateAdded)
        dateStarted = try container.decodeIfPresent(Date.self, forKey: .dateStarted)
        dateCompleted = try container.decodeIfPresent(Date.self, forKey: .dateCompleted)
        obstacles = try container.decode([Obstacle].self, forKey: .obstacles)
        milestones = try container.decode([Milestone].self, forKey: .milestones)
        dailyProgress = try container.decode([DailyProgress].self, forKey: .dailyProgress)
        notes = try container.decode(String.self, forKey: .notes)
        photos = try container.decode([String].self, forKey: .photos)
        mountainHeight = try container.decode(Double.self, forKey: .mountainHeight)
        thumbnail = try container.decodeIfPresent(String.self, forKey: .thumbnail) ?? decodedCategory.icon
        backgroundImage = try container.decodeIfPresent(String.self, forKey: .backgroundImage) ?? "bucket_default"
        location = try container.decodeIfPresent(LocationInfo.self, forKey: .location)
        milestonesPhaseCompleted = try container.decodeIfPresent(Bool.self, forKey: .milestonesPhaseCompleted) ?? false
        isAbandoned = try container.decodeIfPresent(Bool.self, forKey: .isAbandoned) ?? false
        records = try container.decodeIfPresent([ProgressRecord].self, forKey: .records) ?? []
        touchedAt = try container.decodeIfPresent(Date.self, forKey: .touchedAt)
        answers = try container.decodeIfPresent([String: String].self, forKey: .answers) ?? [:]
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(category, forKey: .category)
        try container.encode(status, forKey: .status)
        try container.encode(dateAdded, forKey: .dateAdded)
        try container.encode(dateStarted, forKey: .dateStarted)
        try container.encode(dateCompleted, forKey: .dateCompleted)
        try container.encode(obstacles, forKey: .obstacles)
        try container.encode(milestones, forKey: .milestones)
        try container.encode(dailyProgress, forKey: .dailyProgress)
        try container.encode(notes, forKey: .notes)
        try container.encode(photos, forKey: .photos)
        try container.encode(mountainHeight, forKey: .mountainHeight)
        try container.encode(thumbnail, forKey: .thumbnail)
        try container.encode(backgroundImage, forKey: .backgroundImage)
        try container.encode(location, forKey: .location)
        try container.encode(milestonesPhaseCompleted, forKey: .milestonesPhaseCompleted)
        try container.encode(isAbandoned, forKey: .isAbandoned)
        try container.encode(records, forKey: .records)
        try container.encodeIfPresent(touchedAt, forKey: .touchedAt)
        try container.encode(answers, forKey: .answers)
    }
    
    // MARK: 진행

    var doneStepCount: Int { milestones.filter(\.isCompleted).count }

    /// 마친 단계 / 전체 단계 (0...1). 단계가 없으면 0.
    var progress: Double {
        guard !milestones.isEmpty else { return 0 }
        return Double(doneStepCount) / Double(milestones.count)
    }

    /// 아직 마치지 않은 첫 단계.
    var nextStep: Milestone? { milestones.first { !$0.isCompleted } }

    var allStepsDone: Bool { !milestones.isEmpty && nextStep == nil }

    // MARK: 구체화

    func answer(_ blank: GoalBlank) -> String { answers[blank.rawValue] ?? "" }

    /// 채운 빈칸 수.
    var filledBlankCount: Int { GoalBlank.allCases.filter { !answer($0).isEmpty }.count }

    // MARK: 오래 손대지 않은 목표

    /// 이만큼 아무 진행이 없으면 계속할지 그만둘지 묻는다.
    static let staleAfterDays = 30

    /// 마지막으로 진행이 있던 때: 추가 · 시작 · 단계 체크 · 기록 · 손댄 때 가운데 가장 늦은 것.
    var lastActivity: Date {
        let dates = [dateAdded, dateStarted, touchedAt].compactMap { $0 }
            + milestones.compactMap(\.completedDate)
            + records.map(\.date)
        return dates.max() ?? dateAdded
    }

    /// 완료하지 않았고 한 달 넘게 진행이 없다.
    var isStale: Bool {
        guard status != .completed else { return false }
        let days = Calendar.current.dateComponents([.day], from: lastActivity, to: Date()).day ?? 0
        return days >= Self.staleAfterDays
    }
}

// MARK: - 기록 모아 보기

/// 화면에 보이는 기록 한 건. 새 기록(`records`)과 예전 판이 여러 자리에 남긴 기록을 한 줄로 모은다.
struct GoalRecord: Identifiable {
    let id: String
    /// 예전 판의 글 기록에는 날짜가 없다.
    let date: Date?
    /// 붙은 단계의 제목(저장된 원문).
    let step: String?
    let text: String
    let photos: [String]
    /// `records` 에 있는 기록이면 그 id. 지울 수 있는 기록이다.
    let recordID: UUID?
}

extension BucketListItem {
    /// 이 목표의 모든 기록. 날짜가 있는 것부터 최신순, 날짜 없는 예전 기록은 끝에.
    var timeline: [GoalRecord] {
        var dated: [GoalRecord] = []
        var undated: [GoalRecord] = []
        let stepTitle = { (id: UUID?) in id.flatMap { id in self.milestones.first { $0.id == id }?.title } }

        for record in records {
            dated.append(GoalRecord(id: record.id.uuidString, date: record.date, step: stepTitle(record.stepID),
                                    text: record.note, photos: record.photos, recordID: record.id))
        }
        for step in milestones {
            for record in step.progressRecords {
                dated.append(GoalRecord(id: record.id.uuidString, date: record.date, step: step.title,
                                        text: record.note, photos: record.photos, recordID: nil))
            }
            for check in step.checklist {
                if let evidence = check.evidence, !evidence.isEmpty {
                    let text = check.text + "\n" + evidence
                    let record = GoalRecord(id: "evidence-" + check.id.uuidString, date: check.completedDate,
                                            step: step.title, text: text, photos: [], recordID: nil)
                    if record.date == nil { undated.append(record) } else { dated.append(record) }
                }
                for record in check.progressRecords {
                    dated.append(GoalRecord(id: record.id.uuidString, date: record.date, step: step.title,
                                            text: record.note, photos: record.photos, recordID: nil))
                }
            }
        }
        for entry in dailyProgress where !entry.action.isEmpty {
            dated.append(GoalRecord(id: entry.id.uuidString, date: entry.date, step: nil,
                                    text: entry.action, photos: [], recordID: nil))
        }
        undated.append(contentsOf: notesRecords)
        return dated.sorted { ($0.date ?? .distantPast) > ($1.date ?? .distantPast) } + undated
    }

    /// 예전 판이 `notes` 에 글로 적은 기록. 한 덩이는 "[단계] 질문 / → 답 / 📷 파일" 꼴이고,
    /// 그 꼴이 아닌 덩이는 메모로 본다.
    private var notesRecords: [GoalRecord] {
        guard !notes.isEmpty else { return [] }
        return notes.components(separatedBy: "\n\n").enumerated().compactMap { index, block in
            var lines = block.components(separatedBy: "\n")
            let photos = lines.filter { $0.hasPrefix("📷 ") }
                .map { String($0.dropFirst(2)).trimmingCharacters(in: .whitespaces) }
            lines.removeAll { $0.hasPrefix("📷 ") }
            guard let first = lines.first else { return nil }
            var step: String?
            if first.hasPrefix("["), let end = first.firstIndex(of: "]") {
                step = String(first[first.index(after: first.startIndex)..<end])
                lines[0] = String(first[first.index(after: end)...]).trimmingCharacters(in: .whitespaces)
            }
            let text = lines.map { $0.hasPrefix("→ ") ? String($0.dropFirst(2)) : $0 }
                .joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines)
            guard !text.isEmpty || !photos.isEmpty else { return nil }
            return GoalRecord(id: "notes-\(index)", date: nil, step: step, text: text, photos: photos, recordID: nil)
        }
    }
}
