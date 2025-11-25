//
// CategoryBuckets.swift
// BucketClimb
//
// 카테고리별로 관리되는 버킷리스트 항목 enum
// Auto-generated
//

import Foundation

// MARK: - Category-Specific Bucket Enums

enum BucketItem: Codable, Hashable {
    case travel(TravelBucket)
    case achievement(AchievementBucket)
    case experience(ExperienceBucket)
    case health(HealthBucket)
    case learning(LearningBucket)
    case relationship(RelationshipBucket)
    
    var title: String {
        switch self {
        case .travel(let bucket): return bucket.rawValue
        case .achievement(let bucket): return bucket.rawValue
        case .experience(let bucket): return bucket.rawValue
        case .health(let bucket): return bucket.rawValue
        case .learning(let bucket): return bucket.rawValue
        case .relationship(let bucket): return bucket.rawValue
        }
    }
    
    var category: BucketCategory {
        switch self {
        case .travel: return .travel
        case .achievement: return .achievement
        case .experience: return .experience
        case .health: return .health
        case .learning: return .learning
        case .relationship: return .relationship
        }
    }
    
    var thumbnail: String {
        switch self {
        case .travel(let bucket): return bucket.thumbnail
        case .achievement(let bucket): return bucket.thumbnail
        case .experience(let bucket): return bucket.thumbnail
        case .health(let bucket): return bucket.thumbnail
        case .learning(let bucket): return bucket.thumbnail
        case .relationship(let bucket): return bucket.thumbnail
        }
    }
    
    var backgroundImage: String {
        switch self {
        case .travel(let bucket): return bucket.backgroundImage
        case .achievement(let bucket): return bucket.backgroundImage
        case .experience(let bucket): return bucket.backgroundImage
        case .health(let bucket): return bucket.backgroundImage
        case .learning(let bucket): return bucket.backgroundImage
        case .relationship(let bucket): return bucket.backgroundImage
        }
    }
    
    var hasCustomMilestones: Bool {
        switch self {
        case .travel(let bucket): return bucket.hasCustomMilestones
        case .achievement(let bucket): return bucket.hasCustomMilestones
        case .experience(let bucket): return bucket.hasCustomMilestones
        case .health(let bucket): return bucket.hasCustomMilestones
        case .learning(let bucket): return bucket.hasCustomMilestones
        case .relationship(let bucket): return bucket.hasCustomMilestones
        }
    }

    var milestones: [Milestone] {
        switch self {
        case .travel(let bucket): return bucket.milestones
        case .achievement(let bucket): return bucket.milestones
        case .experience(let bucket): return bucket.milestones
        case .health(let bucket): return bucket.milestones
        case .learning(let bucket): return bucket.milestones
        case .relationship(let bucket): return bucket.milestones
        }
    }
}
