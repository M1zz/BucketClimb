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

enum BucketStatus: String, Codable {
    case inBucket = "버킷에 담김"
    case climbing = "등반 중"
    case completed = "완료"
}

struct Obstacle: Identifiable, Codable, Hashable {
    var id = UUID()
    var type: ObstacleType
    var description: String
    var currentValue: Double
    var targetValue: Double
    var unit: String

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

enum ObstacleType: String, Codable {
    case money = "💰 비용"
    case time = "⏰ 시간"
    case skill = "💪 체력/스킬"
    case knowledge = "📚 지식"
    case timing = "📅 타이밍"
}

struct Milestone: Identifiable, Codable {
    var id = UUID()
    var title: String
    var description: String
    var successCriteria: [String]
    var isCompleted: Bool = false
    var completedDate: Date?
}

struct DailyProgress: Identifiable, Codable {
    var id = UUID()
    var date: Date
    var action: String
    var distance: Double
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
    }
    
    enum CodingKeys: String, CodingKey {
        case id, title, category, status, dateAdded, dateStarted, dateCompleted
        case obstacles, milestones, dailyProgress, notes, photos, mountainHeight, thumbnail, backgroundImage, location, milestonesPhaseCompleted
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
    }
    
    var totalProgress: Double {
        guard !obstacles.isEmpty else { return 0 }
        let sum = obstacles.reduce(0.0) { $0 + $1.progress }
        return sum / Double(obstacles.count)
    }
    
    var climbedDistance: Double {
        dailyProgress.reduce(0.0) { $0 + $1.distance }
    }
    
    var climbedPercentage: Double {
        let totalCm = mountainHeight * 100000
        return min((climbedDistance / totalCm) * 100, 100)
    }
}
