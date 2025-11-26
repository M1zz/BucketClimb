import Foundation
import SwiftUI

class BucketListViewModel: ObservableObject {
    @Published var bucketItems: [BucketListItem] = []
    @Published var showArchiveTab: Bool = false {
        didSet {
            UserDefaults.standard.set(showArchiveTab, forKey: "ShowArchiveTab")
        }
    }

    private let saveKey = "SavedBucketList"

    init() {
        loadData()
        showArchiveTab = UserDefaults.standard.bool(forKey: "ShowArchiveTab")
    }

    var myBucketLists: [BucketListItem] {
        bucketItems.filter { $0.status == .inBucket }
    }

    var climbingBucketLists: [BucketListItem] {
        bucketItems.filter { $0.status == .climbing }
    }

    var itemsCompleted: [BucketListItem] {
        bucketItems.filter { $0.status == .completed }
    }

    // 모든 BucketItem을 가져오는 computed property
    var allBucketItems: [BucketItem] {
        let travel = TravelBucket.allCases.map { BucketItem.travel($0) }
        let experience = ExperienceBucket.allCases.map { BucketItem.experience($0) }
        let achievement = AchievementBucket.allCases.map { BucketItem.achievement($0) }
        let learning = LearningBucket.allCases.map { BucketItem.learning($0) }
        let health = HealthBucket.allCases.map { BucketItem.health($0) }
        let relationship = RelationshipBucket.allCases.map { BucketItem.relationship($0) }
        return travel + experience + achievement + learning + health + relationship
    }

    func getRandomPopularBuckets(count: Int = 5) -> [(title: String, category: BucketCategory, thumbnail: String, backgroundImage: String)] {
        #warning("개발 모드: 아이슬란드에서 오로라 보기를 항상 첫 번째로 표시")
        let icelandAurora = BucketItem.travel(.아이슬란드에서_오로라_보기)
        let others = allBucketItems.filter { $0.title != icelandAurora.title }.shuffled().prefix(count - 1)

        let result = [icelandAurora] + others
        return result.map { ($0.title, $0.category, $0.thumbnail, $0.backgroundImage) }
    }

    func addBucketItem(title: String, category: BucketCategory, thumbnail: String? = nil, backgroundImage: String? = nil, location: LocationInfo? = nil, notes: String? = nil) {
        let newItem = BucketListItem(title: title, category: category, thumbnail: thumbnail, backgroundImage: backgroundImage, location: location)
        if let notes = notes, !notes.isEmpty {
            newItem.notes = notes
        }
        bucketItems.append(newItem)
        saveData()
    }

    func startClimbing(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].status = .climbing
            bucketItems[index].dateStarted = Date()
            objectWillChange.send()
            saveData()
            // 프리셋 마일스톤 자동 생성
            generatePresetMilestones(for: bucketItems[index])
        }
    }

    func completeMilestonesPhase(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].milestonesPhaseCompleted = true
            objectWillChange.send()
            saveData()
        }
    }

    func completeBucket(item: BucketListItem) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].status = .completed
            bucketItems[index].dateCompleted = Date()
            objectWillChange.send()
            saveData()
        }
    }

    func deleteBucket(item: BucketListItem) {
        bucketItems.removeAll { $0.id == item.id }
        saveData()
    }

    func updateObstacle(item: BucketListItem, obstacle: Obstacle, newValue: Double) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let obstacleIndex = bucketItems[itemIndex].obstacles.firstIndex(where: { $0.id == obstacle.id }) {
            bucketItems[itemIndex].obstacles[obstacleIndex].currentValue = newValue
            saveData()
        }
    }

    func addDailyProgress(item: BucketListItem, action: String, distance: Double) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let progress = DailyProgress(date: Date(), action: action, distance: distance)
            bucketItems[index].dailyProgress.append(progress)
            saveData()
        }
    }

    func deleteDailyProgress(item: BucketListItem, progress: DailyProgress) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let progressIndex = bucketItems[itemIndex].dailyProgress.firstIndex(where: { $0.id == progress.id }) {
            bucketItems[itemIndex].dailyProgress.remove(at: progressIndex)
            saveData()
        }
    }

    func toggleMilestone(item: BucketListItem, milestone: Milestone) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[campIndex].isCompleted.toggle()
            if bucketItems[itemIndex].milestones[campIndex].isCompleted {
                bucketItems[itemIndex].milestones[campIndex].completedDate = Date()
            } else {
                bucketItems[itemIndex].milestones[campIndex].completedDate = nil
            }
            saveData()
        }
    }

    // 체크리스트 완료 (근거 입력 필수)
    func completeChecklistItem(item: BucketListItem, milestone: Milestone, checklistItem: ChecklistItem, evidence: String) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }),
           let checklistIndex = bucketItems[itemIndex].milestones[milestoneIndex].checklist.firstIndex(where: { $0.id == checklistItem.id }) {

            // 체크리스트 아이템 완료 처리
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].isCompleted = true
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].evidence = evidence
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].completedDate = Date()

            // 모든 체크리스트가 완료되었는지 확인하고 마일스톤 자동 완료
            let allCompleted = bucketItems[itemIndex].milestones[milestoneIndex].allChecklistCompleted
            if allCompleted && !bucketItems[itemIndex].milestones[milestoneIndex].isCompleted {
                bucketItems[itemIndex].milestones[milestoneIndex].isCompleted = true
                bucketItems[itemIndex].milestones[milestoneIndex].completedDate = Date()
            }

            saveData()
        }
    }

    // 체크리스트 완료 해제
    func uncompleteChecklistItem(item: BucketListItem, milestone: Milestone, checklistItem: ChecklistItem) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }),
           let checklistIndex = bucketItems[itemIndex].milestones[milestoneIndex].checklist.firstIndex(where: { $0.id == checklistItem.id }) {

            // 체크리스트 아이템 완료 해제
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].isCompleted = false
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].evidence = nil
            bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].completedDate = nil

            // 마일스톤 자동 완료 해제
            if bucketItems[itemIndex].milestones[milestoneIndex].isCompleted {
                bucketItems[itemIndex].milestones[milestoneIndex].isCompleted = false
                bucketItems[itemIndex].milestones[milestoneIndex].completedDate = nil
            }

            saveData()
        }
    }

    // 기존 toggle 함수 - 하위 호환성 유지 (근거 없이 단순 토글, 완료 해제용)
    func toggleChecklistItem(item: BucketListItem, milestone: Milestone, checklistItem: ChecklistItem) {
        if checklistItem.isCompleted {
            uncompleteChecklistItem(item: item, milestone: milestone, checklistItem: checklistItem)
        }
        // 완료되지 않은 경우는 UI에서 근거 입력 모달을 통해 completeChecklistItem 호출
    }

    // 체크리스트 항목 추가
    func addChecklistItem(item: BucketListItem, milestone: Milestone, text: String) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            let newItem = ChecklistItem(text: text)
            bucketItems[itemIndex].milestones[milestoneIndex].checklist.append(newItem)
            bucketItems[itemIndex].milestones[milestoneIndex].successCriteria.append(text)
            saveData()
        }
    }

    // 체크리스트 항목 삭제
    func deleteChecklistItem(item: BucketListItem, milestone: Milestone, checklistItem: ChecklistItem) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }),
           let checklistIndex = bucketItems[itemIndex].milestones[milestoneIndex].checklist.firstIndex(where: { $0.id == checklistItem.id }) {
            let text = bucketItems[itemIndex].milestones[milestoneIndex].checklist[checklistIndex].text
            bucketItems[itemIndex].milestones[milestoneIndex].checklist.remove(at: checklistIndex)
            if let criteriaIndex = bucketItems[itemIndex].milestones[milestoneIndex].successCriteria.firstIndex(of: text) {
                bucketItems[itemIndex].milestones[milestoneIndex].successCriteria.remove(at: criteriaIndex)
            }
            saveData()
        }
    }

    func addMilestone(item: BucketListItem, title: String, description: String, successCriteria: [String] = []) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let newCamp = Milestone(title: title, description: description, successCriteria: successCriteria)
            bucketItems[index].milestones.append(newCamp)
            saveData()
        }
    }

    func generatePresetMilestones(for item: BucketListItem) {
        guard let index = bucketItems.firstIndex(where: { $0.id == item.id }) else { return }

        let milestones = getMilestonesForBucket(title: item.title, category: item.category)
        bucketItems[index].milestones = milestones
        saveData()
    }

    private func getMilestonesForBucket(title: String, category: BucketCategory) -> [Milestone] {
        // 카테고리별 enum에서 해당 버킷 항목의 milestones를 조회
        let bucketItem = getBucketItem(title: title, category: category)
        if let item = bucketItem, item.hasCustomMilestones {
            return item.milestones
        }
        return getDefaultMilestones(for: category)
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

    private func getDefaultMilestones(for category: BucketCategory) -> [Milestone] {
        switch category {
        case .travel:
            return [
                Milestone(title: "여행 정보 조사", description: "목적지, 시즌, 예산 리서치", successCriteria: ["최적의 방문 시기를 알고 있나요?", "대략적인 예산을 계산했나요?", "주요 관광지를 파악했나요?"]),
                Milestone(title: "예산 마련", description: "여행 경비 저축", successCriteria: ["목표 금액을 설정했나요?", "매달 저축 금액을 정했나요?", "예산의 80% 이상 모았나요?"]),
                Milestone(title: "항공권/숙소 예약", description: "주요 예약 완료", successCriteria: ["항공권을 예매했나요?", "숙소를 예약했나요?", "여행자 보험에 가입했나요?"]),
                Milestone(title: "여행 준비물", description: "짐 꾸리기", successCriteria: ["체크리스트를 작성했나요?", "필수 준비물을 챙겼나요?", "여권/비자를 확인했나요?"])
            ]
        case .experience:
            return [
                Milestone(title: "체험 정보 조사", description: "업체, 비용, 준비물 파악", successCriteria: ["신뢰할 수 있는 업체를 찾았나요?", "비용을 확인했나요?", "필요한 조건을 파악했나요?"]),
                Milestone(title: "예약하기", description: "날짜와 시간 확정", successCriteria: ["예약을 완료했나요?", "취소 정책을 확인했나요?", "동행자를 확정했나요?"]),
                Milestone(title: "사전 준비", description: "필요한 것들 챙기기", successCriteria: ["복장을 준비했나요?", "건강 상태를 확인했나요?", "주의사항을 숙지했나요?"]),
                Milestone(title: "체험 완료", description: "버킷리스트 달성", successCriteria: ["체험을 완료했나요?", "사진/영상을 남겼나요?", "소감을 기록했나요?"])
            ]
        case .achievement:
            return [
                Milestone(title: "목표 구체화", description: "달성 기준 명확히", successCriteria: ["측정 가능한 목표인가요?", "기한을 설정했나요?", "현실적인 목표인가요?"]),
                Milestone(title: "계획 수립", description: "단계별 실행 계획", successCriteria: ["세부 계획을 세웠나요?", "필요한 자원을 파악했나요?", "장애물을 예상했나요?"]),
                Milestone(title: "꾸준한 실행", description: "매일/매주 실천", successCriteria: ["계획대로 실행하고 있나요?", "진행 상황을 기록하나요?", "중간 점검을 하나요?"]),
                Milestone(title: "목표 달성", description: "최종 목표 완수", successCriteria: ["목표를 달성했나요?", "성취감을 느끼나요?", "다음 목표를 세웠나요?"])
            ]
        case .learning:
            return [
                Milestone(title: "학습 계획 수립", description: "커리큘럼 및 일정", successCriteria: ["학습 자료를 선정했나요?", "일일 학습 시간을 정했나요?", "목표 수준을 설정했나요?"]),
                Milestone(title: "기초 학습", description: "기본기 다지기", successCriteria: ["기초 개념을 이해했나요?", "꾸준히 학습하고 있나요?", "복습을 하고 있나요?"]),
                Milestone(title: "심화 학습", description: "실력 향상", successCriteria: ["응용 문제를 풀 수 있나요?", "실전 경험을 쌓고 있나요?", "약점을 보완하고 있나요?"]),
                Milestone(title: "목표 달성", description: "자격증/실력 인증", successCriteria: ["목표 수준에 도달했나요?", "실력을 검증받았나요?", "지속적인 발전을 계획했나요?"])
            ]
        case .health:
            return [
                Milestone(title: "현재 상태 파악", description: "건강 지표 측정", successCriteria: ["현재 상태를 기록했나요?", "목표를 설정했나요?", "실현 가능한 목표인가요?"]),
                Milestone(title: "계획 수립", description: "운동/식단 계획", successCriteria: ["구체적인 계획을 세웠나요?", "전문가 조언을 받았나요?", "필요한 도구를 준비했나요?"]),
                Milestone(title: "습관 형성", description: "21일 연속 실천", successCriteria: ["매일 실천하고 있나요?", "기록을 남기고 있나요?", "변화를 느끼나요?"]),
                Milestone(title: "목표 달성", description: "건강 목표 완수", successCriteria: ["목표에 도달했나요?", "유지 계획을 세웠나요?", "건강해진 것을 느끼나요?"])
            ]
        case .relationship:
            return [
                Milestone(title: "관계 목표 정의", description: "원하는 관계 모습", successCriteria: ["어떤 관계를 원하는지 명확한가요?", "현재 관계 상태를 파악했나요?", "개선점을 알고 있나요?"]),
                Milestone(title: "시간 투자", description: "함께하는 시간 확보", successCriteria: ["정기적으로 시간을 내나요?", "질 높은 시간을 보내나요?", "대화를 충분히 하나요?"]),
                Milestone(title: "관계 개선 노력", description: "소통과 이해", successCriteria: ["상대방의 입장을 이해하려 하나요?", "감사를 표현하나요?", "갈등을 건강하게 해결하나요?"]),
                Milestone(title: "목표 관계 달성", description: "원하던 관계 형성", successCriteria: ["관계가 개선되었나요?", "서로 만족하나요?", "지속적인 노력을 계획했나요?"])
            ]
        }
    }

    func deleteMilestone(item: BucketListItem, milestone: Milestone) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones.remove(at: campIndex)
            saveData()
        }
    }

    func updateMilestone(item: BucketListItem, milestone: Milestone, newTitle: String, newDescription: String, newSuccessCriteria: [String]? = nil) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let campIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[campIndex].title = newTitle
            bucketItems[itemIndex].milestones[campIndex].description = newDescription
            if let criteria = newSuccessCriteria {
                bucketItems[itemIndex].milestones[campIndex].successCriteria = criteria
            }
            saveData()
        }
    }

    func setMilestoneDeadline(item: BucketListItem, milestone: Milestone, deadline: Date?) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            bucketItems[itemIndex].milestones[milestoneIndex].deadline = deadline
            saveData()
        }
    }

    func reorderMilestones(item: BucketListItem, fromOffsets: IndexSet, toOffset: Int) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[itemIndex].milestones.move(fromOffsets: fromOffsets, toOffset: toOffset)
            saveData()
        }
    }

    func moveMilestone(item: BucketListItem, milestone: Milestone, direction: Int) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let milestoneIndex = bucketItems[itemIndex].milestones.firstIndex(where: { $0.id == milestone.id }) {
            let newIndex = milestoneIndex + direction
            guard newIndex >= 0 && newIndex < bucketItems[itemIndex].milestones.count else { return }
            bucketItems[itemIndex].milestones.swapAt(milestoneIndex, newIndex)
            saveData()
        }
    }

    func addObstacle(item: BucketListItem, type: ObstacleType, description: String, targetValue: Double, unit: String, relatedMilestoneId: UUID? = nil, customNote: String? = nil) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            let newObstacle = Obstacle(type: type, description: description, currentValue: 0, targetValue: targetValue, unit: unit, relatedMilestoneId: relatedMilestoneId, customNote: customNote)
            bucketItems[index].obstacles.append(newObstacle)
            saveData()
        }
    }

    func deleteObstacle(item: BucketListItem, obstacle: Obstacle) {
        if let itemIndex = bucketItems.firstIndex(where: { $0.id == item.id }),
           let obstacleIndex = bucketItems[itemIndex].obstacles.firstIndex(where: { $0.id == obstacle.id }) {
            bucketItems[itemIndex].obstacles.remove(at: obstacleIndex)
            saveData()
        }
    }

    func updateBucketTitle(item: BucketListItem, newTitle: String) {
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].title = newTitle
            saveData()
        }
    }

    private func generateObstacles(for item: BucketListItem) {
        var obstacles: [Obstacle] = []
        // milestones는 generatePresetMilestones에서 생성
        var height: Double = 3.0

        // 카테고리와 제목 기반 지능형 장애물 생성
        let title = item.title.lowercased()

        // 여행 관련
        if item.category == .travel || title.contains("여행") || title.contains("가기") {
            if title.contains("아이슬란드") || title.contains("오로라") {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 2500000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 7, unit: "일"),
                    Obstacle(type: .timing, description: "적절한 시즌 예약", currentValue: 0, targetValue: 1, unit: "완료"),
                    Obstacle(type: .knowledge, description: "여행 계획 수립", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 2.5
            } else if title.contains("유럽") || title.contains("세계여행") {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 5000000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 14, unit: "일"),
                    Obstacle(type: .knowledge, description: "여행 계획", currentValue: 0, targetValue: 1, unit: "완료"),
                    Obstacle(type: .timing, description: "비자/예약", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 5.0
            } else {
                obstacles = [
                    Obstacle(type: .money, description: "여행 경비", currentValue: 0, targetValue: 1500000, unit: "원"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 5, unit: "일"),
                    Obstacle(type: .knowledge, description: "여행 계획", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 1.5
            }
        }
        // 성취 관련 (산악, 마라톤, 시험 등)
        else if item.category == .achievement || title.contains("성취") || title.contains("도전") {
            if title.contains("에베레스트") || title.contains("베이스캠프") || title.contains("트레킹") {
                obstacles = [
                    Obstacle(type: .money, description: "트레킹 비용", currentValue: 0, targetValue: 8000000, unit: "원"),
                    Obstacle(type: .skill, description: "체력 훈련", currentValue: 0, targetValue: 100, unit: "일"),
                    Obstacle(type: .time, description: "휴가 일수", currentValue: 0, targetValue: 21, unit: "일"),
                    Obstacle(type: .knowledge, description: "고산병 대비", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 5.3
            } else if title.contains("마라톤") || title.contains("풀코스") {
                obstacles = [
                    Obstacle(type: .skill, description: "달리기 훈련", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .money, description: "준비 비용", currentValue: 0, targetValue: 500000, unit: "원"),
                    Obstacle(type: .knowledge, description: "훈련 계획", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 4.2
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "투자 시간", currentValue: 0, targetValue: 100, unit: "시간"),
                    Obstacle(type: .skill, description: "역량 개발", currentValue: 0, targetValue: 10, unit: "단계"),
                    Obstacle(type: .knowledge, description: "학습", currentValue: 0, targetValue: 1, unit: "완료")
                ]
                height = 3.8
            }
        }
        // 학습 관련
        else if item.category == .learning || title.contains("배우") || title.contains("공부") || title.contains("어") && (title.contains("유창") || title.contains("구사")) {
            if title.contains("영어") || title.contains("프랑스어") || title.contains("일본어") || title.contains("중국어") {
                let language = title.contains("프랑스어") ? "프랑스어" : title.contains("일본어") ? "일본어" : title.contains("중국어") ? "중국어" : "영어"
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 500, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 2000000, unit: "원"),
                    Obstacle(type: .knowledge, description: "교재/강의 완료", currentValue: 0, targetValue: 10, unit: "권")
                ]
                height = 4.0
            } else if title.contains("자격증") || title.contains("시험") {
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 300, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 1000000, unit: "원"),
                    Obstacle(type: .knowledge, description: "과목 이수", currentValue: 0, targetValue: 5, unit: "과목")
                ]
                height = 2.8
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "학습 시간", currentValue: 0, targetValue: 200, unit: "시간"),
                    Obstacle(type: .money, description: "학습 비용", currentValue: 0, targetValue: 500000, unit: "원")
                ]
                height = 2.0
            }
        }
        // 건강 관련
        else if item.category == .health {
            if title.contains("다이어트") || title.contains("감량") || title.contains("kg") {
                obstacles = [
                    Obstacle(type: .time, description: "운동 일수", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .skill, description: "식단 관리", currentValue: 0, targetValue: 90, unit: "일"),
                    Obstacle(type: .money, description: "헬스장 비용", currentValue: 0, targetValue: 500000, unit: "원")
                ]
                height = 3.0
            } else {
                obstacles = [
                    Obstacle(type: .time, description: "건강 관리", currentValue: 0, targetValue: 60, unit: "일"),
                    Obstacle(type: .skill, description: "습관 형성", currentValue: 0, targetValue: 21, unit: "일")
                ]
                height = 2.5
            }
        }
        // 경험 관련
        else if item.category == .experience {
            obstacles = [
                Obstacle(type: .money, description: "필요 비용", currentValue: 0, targetValue: 800000, unit: "원"),
                Obstacle(type: .time, description: "소요 시간", currentValue: 0, targetValue: 10, unit: "시간"),
                Obstacle(type: .knowledge, description: "사전 준비", currentValue: 0, targetValue: 1, unit: "완료")
            ]
            height = 1.8
        }
        // 관계 관련
        else if item.category == .relationship {
            obstacles = [
                Obstacle(type: .time, description: "함께하는 시간", currentValue: 0, targetValue: 50, unit: "시간"),
                Obstacle(type: .skill, description: "노력과 실천", currentValue: 0, targetValue: 30, unit: "일")
            ]
            height = 2.2
        }
        // 기본 템플릿
        else {
            obstacles = [
                Obstacle(type: .money, description: "필요 비용", currentValue: 0, targetValue: 1000000, unit: "원"),
                Obstacle(type: .time, description: "필요 시간", currentValue: 0, targetValue: 100, unit: "시간"),
                Obstacle(type: .knowledge, description: "학습 및 준비", currentValue: 0, targetValue: 1, unit: "완료")
            ]
            height = 3.0
        }

        // 업데이트
        if let index = bucketItems.firstIndex(where: { $0.id == item.id }) {
            bucketItems[index].obstacles = obstacles
            // milestones는 generatePresetMilestones에서 따로 생성
            bucketItems[index].mountainHeight = height
            saveData()
        }
    }

    private func saveData() {
        if let encoded = try? JSONEncoder().encode(bucketItems) {
            UserDefaults.standard.set(encoded, forKey: saveKey)
        }
    }

    private func loadData() {
        if let savedData = UserDefaults.standard.data(forKey: saveKey),
           let decoded = try? JSONDecoder().decode([BucketListItem].self, from: savedData) {
            bucketItems = decoded
        }
    }

}
