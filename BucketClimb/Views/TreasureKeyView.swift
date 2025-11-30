//
//  TreasureKeyView.swift
//  BucketClimb
//
//  내 창고 - 열쇠와 보물상자 메타포 UI
//

import SwiftUI
import PhotosUI
import OSLog

// MARK: - Navigation Bar Title Color Modifier

struct NavigationBarTitleColor: ViewModifier {
    let color: UIColor

    init(_ color: Color) {
        self.color = UIColor(color)
    }

    func body(content: Content) -> some View {
        content
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.largeTitleTextAttributes = [.foregroundColor: color]
                appearance.titleTextAttributes = [.foregroundColor: color]
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
            .onDisappear {
                // 기본 appearance로 복원
                let appearance = UINavigationBarAppearance()
                appearance.configureWithDefaultBackground()
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

extension View {
    func navigationBarTitleColor(_ color: Color) -> some View {
        modifier(NavigationBarTitleColor(color))
    }
}

// MARK: - Color Extensions
extension Color {
    // 시스템 색상으로 대체 (컨셉 색상 제거)
    static let keyGold = Color.yellow
    static let keySilver = Color.secondary
    static let keyBronze = Color.yellow
    static let boxWood = Color.brown
    static let boxDark = Color.brown.opacity(0.7)
    static let treasureGlow = Color.purple
    static let magicSparkle = Color.orange

    // 시스템 적응형 배경 (라이트/다크 모드 지원)
    static var forgeBackgroundAdaptive: Color {
        Color(UIColor.systemGroupedBackground)
    }

    static var oceanBackgroundAdaptive: Color {
        Color(UIColor.systemGroupedBackground)
    }

    static var warehouseBackgroundAdaptive: Color {
        Color(UIColor.systemGroupedBackground)
    }

    static var treasureBackgroundAdaptive: Color {
        Color(UIColor.systemGroupedBackground)
    }

    static var cardBackgroundAdaptive: Color {
        Color(UIColor.secondarySystemGroupedBackground)
    }

    static var cardBorderAdaptive: Color {
        Color(UIColor.separator)
    }

    // Legacy - 기존 코드 호환용
    static let forgeBackground = Color(UIColor.systemBackground)
    static let oceanBackground = Color(UIColor.systemBackground)
    static let warehouseBackground = Color(UIColor.systemBackground)
}

// MARK: - Data Models

enum BoxCategory: String, Codable, CaseIterable {
    case travel = "여행"
    case challenge = "도전"
    case learning = "학습"
    case relationship = "관계"
    case career = "커리어"
    case lifestyle = "라이프스타일"

    var icon: String {
        switch self {
        case .travel: return "airplane"
        case .challenge: return "figure.run"
        case .learning: return "book.fill"
        case .relationship: return "heart.fill"
        case .career: return "briefcase.fill"
        case .lifestyle: return "leaf.fill"
        }
    }

    var color: Color {
        switch self {
        case .travel: return .blue
        case .challenge: return .orange
        case .learning: return .green
        case .relationship: return .pink
        case .career: return .purple
        case .lifestyle: return .mint
        }
    }
}

enum BoxStatus: String, Codable {
    case inOcean      // 꿈의 바다에 있음
    case inWarehouse  // 내 창고로 가져옴
    case forging      // 열쇠 제작 중
    case ready        // 열쇠 완성, 열기 대기
    case opened       // 열림 (달성)
}

enum ToothCategory: String, Codable, CaseIterable {
    case money = "예산"
    case time = "시간"
    case skill = "스킬"
    case resource = "자원"
    case permission = "허가"
    case health = "건강"

    var icon: String {
        switch self {
        case .money: return "wonsign.circle.fill"
        case .time: return "clock.fill"
        case .skill: return "star.fill"
        case .resource: return "shippingbox.fill"
        case .permission: return "checkmark.seal.fill"
        case .health: return "heart.fill"
        }
    }

    var color: Color {
        switch self {
        case .money: return .green
        case .time: return .blue
        case .skill: return .orange
        case .resource: return .brown
        case .permission: return .purple
        case .health: return .red
        }
    }
}

struct Tooth: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    var completedAt: Date?
    var category: ToothCategory

    init(id: UUID = UUID(), title: String, isCompleted: Bool = false, completedAt: Date? = nil, category: ToothCategory) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        self.completedAt = completedAt
        self.category = category
    }
}

struct TreasureBox: Identifiable, Codable {
    let id: UUID
    var title: String
    var description: String
    var category: BoxCategory
    var imageName: String?
    var teeth: [Tooth]
    var status: BoxStatus
    var createdAt: Date
    var completedAt: Date?
    var location: LocationInfo?

    init(id: UUID = UUID(), title: String, description: String = "", category: BoxCategory, imageName: String? = nil, teeth: [Tooth] = [], status: BoxStatus = .inOcean, createdAt: Date = Date(), completedAt: Date? = nil, location: LocationInfo? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.category = category
        self.imageName = imageName
        self.teeth = teeth
        self.status = status
        self.createdAt = createdAt
        self.completedAt = completedAt
        self.location = location
    }

    var progress: Double {
        guard !teeth.isEmpty else { return 0 }
        return Double(teeth.filter { $0.isCompleted }.count) / Double(teeth.count)
    }

    var isKeyComplete: Bool {
        teeth.allSatisfy { $0.isCompleted }
    }

    var completedTeethCount: Int {
        teeth.filter { $0.isCompleted }.count
    }
}

struct CompletedBox: Identifiable, Codable {
    let id: UUID
    var box: TreasureBox
    let completedAt: Date
    var photos: [String]
    var memo: String
    var rating: Int
    var isAbandoned: Bool  // 포기한 꿈인지 여부

    init(id: UUID = UUID(), box: TreasureBox, completedAt: Date = Date(), photos: [String] = [], memo: String = "", rating: Int = 5, isAbandoned: Bool = false) {
        self.id = id
        self.box = box
        self.completedAt = completedAt
        self.photos = photos
        self.memo = memo
        self.rating = rating
        self.isAbandoned = isAbandoned
    }
}

// MARK: - ViewModel (BucketListViewModel과 동기화)

class TreasureBoxViewModel: ObservableObject {
    @Published var oceanBoxes: [TreasureBox] = []
    @Published var warehouseBoxes: [TreasureBox] = []
    @Published var completedBoxes: [CompletedBox] = []

    private weak var bucketListViewModel: BucketListViewModel?

    init() {
        // 독립 실행용 (Preview 등)
    }

    init(bucketListViewModel: BucketListViewModel) {
        self.bucketListViewModel = bucketListViewModel
        syncFromBucketList()
    }

    func setBucketListViewModel(_ viewModel: BucketListViewModel) {
        self.bucketListViewModel = viewModel
        syncFromBucketList()
    }

    // BucketListViewModel 데이터를 TreasureBox로 변환
    func syncFromBucketList() {
        guard let viewModel = bucketListViewModel else { return }

        // 꿈의 바다에는 항상 랜덤 추천 상자만 표시
        oceanBoxes = generateRandomRecommendedBoxes()

        // 등반 중 상태 -> 내 창고 (forging)
        warehouseBoxes = viewModel.climbingBucketLists.map { item in
            convertToTreasureBox(item, status: .forging)
        }

        // 완료 상태 -> 보물창고 (opened)
        completedBoxes = viewModel.itemsCompleted.map { item in
            let box = convertToTreasureBox(item, status: .opened)
            return CompletedBox(
                box: box,
                completedAt: item.dateCompleted ?? Date(),
                memo: item.notes,
                rating: 5,
                isAbandoned: item.isAbandoned
            )
        }
    }

    // 랜덤 추천 상자 생성 (비어있을 때)
    private func generateRandomRecommendedBoxes() -> [TreasureBox] {
        #if DEBUG
        // 개발 모드: 10개 추가
        let count = 10
        #else
        // 릴리즈: 0~5개 (0개일 수도 있음)
        let count = Int.random(in: 0...5)
        #endif

        let allRecommendations = getRecommendedBuckets()
        let shuffled = allRecommendations.shuffled()
        let selected = Array(shuffled.prefix(count))

        return selected.map { recommendation in
            // 이미지가 없으면 default1~5 중 랜덤 선택
            let finalImageName = recommendation.imageName ?? "default\(Int.random(in: 1...5))"

            return TreasureBox(
                title: recommendation.title,
                description: recommendation.description,
                category: recommendation.category,
                imageName: finalImageName,
                teeth: recommendation.teeth,
                status: .inOcean,
                location: recommendation.location
            )
        }
    }

    // 추천 버킷 목록 (실제 Bucket enum에서 랜덤으로 가져옴)
    private func getRecommendedBuckets() -> [(title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?)] {
        var allBuckets: [(title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?)] = []

        // TravelBucket에서 가져오기
        let travelBuckets = TravelBucket.allCases.shuffled().prefix(30).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "여행의 꿈을 이루세요",
                category: .travel,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "여행 계획 세우기", category: .skill),
                    Tooth(title: "여행 경비 모으기", category: .money),
                    Tooth(title: "항공권 예매하기", category: .resource),
                    Tooth(title: "숙소 예약하기", category: .resource)
                ] : teeth,
                location: bucket.position
            )
        }
        allBuckets.append(contentsOf: travelBuckets)

        // AchievementBucket에서 가져오기
        let achievementBuckets = AchievementBucket.allCases.shuffled().prefix(20).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "도전의 꿈을 이루세요",
                category: .challenge,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "목표 설정하기", category: .skill),
                    Tooth(title: "실행 계획 세우기", category: .skill),
                    Tooth(title: "필요한 준비하기", category: .resource),
                    Tooth(title: "꾸준히 실천하기", category: .time)
                ] : teeth,
                location: nil
            )
        }
        allBuckets.append(contentsOf: achievementBuckets)

        // LearningBucket에서 가져오기
        let learningBuckets = LearningBucket.allCases.shuffled().prefix(20).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "배움의 꿈을 이루세요",
                category: .learning,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "학습 계획 세우기", category: .skill),
                    Tooth(title: "학습 자료 준비하기", category: .resource),
                    Tooth(title: "매일 공부하기", category: .time),
                    Tooth(title: "실력 점검하기", category: .skill)
                ] : teeth,
                location: nil
            )
        }
        allBuckets.append(contentsOf: learningBuckets)

        // HealthBucket에서 가져오기
        let healthBuckets = HealthBucket.allCases.shuffled().prefix(15).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "건강의 꿈을 이루세요",
                category: .lifestyle,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "건강 목표 설정하기", category: .skill),
                    Tooth(title: "운동 계획 세우기", category: .health),
                    Tooth(title: "식단 관리하기", category: .health),
                    Tooth(title: "꾸준히 실천하기", category: .time)
                ] : teeth,
                location: nil
            )
        }
        allBuckets.append(contentsOf: healthBuckets)

        // RelationshipBucket에서 가져오기
        let relationshipBuckets = RelationshipBucket.allCases.shuffled().prefix(15).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "관계의 꿈을 이루세요",
                category: .relationship,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "계획 세우기", category: .skill),
                    Tooth(title: "시간 확보하기", category: .time),
                    Tooth(title: "준비하기", category: .resource),
                    Tooth(title: "실천하기", category: .time)
                ] : teeth,
                location: nil
            )
        }
        allBuckets.append(contentsOf: relationshipBuckets)

        // ExperienceBucket에서 가져오기
        let experienceBuckets = ExperienceBucket.allCases.shuffled().prefix(15).map { bucket -> (title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth], location: LocationInfo?) in
            let teeth = bucket.milestones.map { milestone -> Tooth in
                Tooth(
                    title: milestone.title,
                    isCompleted: false,
                    category: guessToothCategory(milestone.title)
                )
            }
            return (
                title: bucket.rawValue,
                description: bucket.milestones.first?.description ?? "경험의 꿈을 이루세요",
                category: .challenge,
                imageName: bucket.backgroundImage,
                teeth: teeth.isEmpty ? [
                    Tooth(title: "경험 계획 세우기", category: .skill),
                    Tooth(title: "일정 조율하기", category: .time),
                    Tooth(title: "필요한 것 준비하기", category: .resource),
                    Tooth(title: "실행하기", category: .time)
                ] : teeth,
                location: nil
            )
        }
        allBuckets.append(contentsOf: experienceBuckets)

        return allBuckets
    }

    private func convertToTreasureBox(_ item: BucketListItem, status: BoxStatus) -> TreasureBox {
        // BucketCategory -> BoxCategory 변환
        let boxCategory = convertCategory(item.category)

        // Milestones -> Teeth 변환
        let teeth = item.milestones.map { milestone -> Tooth in
            Tooth(
                id: milestone.id,
                title: milestone.title,
                isCompleted: milestone.isCompleted,
                completedAt: milestone.completedDate,
                category: guessToothCategory(milestone.title)
            )
        }

        // 마일스톤이 없으면 기본 톱니 생성
        let finalTeeth = teeth.isEmpty ? createDefaultTeeth(for: item) : teeth

        return TreasureBox(
            id: item.id,
            title: item.title,
            description: item.notes,
            category: boxCategory,
            imageName: item.backgroundImage,
            teeth: finalTeeth,
            status: status,
            createdAt: item.dateAdded,
            completedAt: item.dateCompleted,
            location: item.location
        )
    }

    private func convertCategory(_ category: BucketCategory) -> BoxCategory {
        switch category {
        case .travel: return .travel
        case .experience: return .challenge
        case .achievement: return .career
        case .relationship: return .relationship
        case .health: return .lifestyle
        case .learning: return .learning
        }
    }

    private func guessToothCategory(_ title: String) -> ToothCategory {
        let lowercased = title.lowercased()
        if lowercased.contains("돈") || lowercased.contains("비용") || lowercased.contains("예산") || lowercased.contains("원") {
            return .money
        } else if lowercased.contains("시간") || lowercased.contains("일정") || lowercased.contains("휴가") {
            return .time
        } else if lowercased.contains("배우") || lowercased.contains("연습") || lowercased.contains("훈련") || lowercased.contains("실력") {
            return .skill
        } else if lowercased.contains("준비") || lowercased.contains("구매") || lowercased.contains("장비") {
            return .resource
        } else if lowercased.contains("신청") || lowercased.contains("등록") || lowercased.contains("예약") || lowercased.contains("승인") {
            return .permission
        } else if lowercased.contains("건강") || lowercased.contains("체력") || lowercased.contains("운동") {
            return .health
        }
        return .skill
    }

    private func createDefaultTeeth(for item: BucketListItem) -> [Tooth] {
        // 기본 톱니 3개 생성
        return [
            Tooth(title: "계획 세우기", category: .time),
            Tooth(title: "준비물 확인", category: .resource),
            Tooth(title: "실행하기", category: .skill)
        ]
    }

    // 꿈의 바다에서 내 창고로 이동 (BucketList에서 등반 시작)
    func moveToWarehouse(_ box: TreasureBox) {
        guard let viewModel = bucketListViewModel else {
            // 독립 모드
            if let index = oceanBoxes.firstIndex(where: { $0.id == box.id }) {
                var movedBox = oceanBoxes.remove(at: index)
                movedBox.status = .forging
                warehouseBoxes.append(movedBox)
            }
            return
        }

        // 기존 버킷에서 찾기
        if let item = viewModel.bucketItems.first(where: { $0.id == box.id }) {
            // 기존 버킷 -> 등반 시작
            viewModel.startClimbing(item: item)
        } else {
            // 추천 상자 -> 새로 추가하고 바로 등반 시작
            let category = convertBoxCategoryToBucketCategory(box.category)
            viewModel.addBucketItem(
                title: box.title,
                category: category,
                thumbnail: nil,
                backgroundImage: box.imageName,
                location: box.location,
                notes: box.description
            )
            // 방금 추가한 아이템 찾아서 등반 시작
            if let newItem = viewModel.bucketItems.first(where: { $0.title == box.title }) {
                viewModel.startClimbing(item: newItem)
            }
        }
        syncFromBucketList()
    }

    // BoxCategory -> BucketCategory 역변환
    private func convertBoxCategoryToBucketCategory(_ category: BoxCategory) -> BucketCategory {
        switch category {
        case .travel: return .travel
        case .challenge: return .experience
        case .career: return .achievement
        case .relationship: return .relationship
        case .lifestyle: return .health
        case .learning: return .learning
        }
    }

    // 톱니 토글 (마일스톤 완료/해제)
    func toggleTooth(boxId: UUID, toothId: UUID) {
        guard let viewModel = bucketListViewModel else {
            // 독립 모드
            if let boxIndex = warehouseBoxes.firstIndex(where: { $0.id == boxId }),
               let toothIndex = warehouseBoxes[boxIndex].teeth.firstIndex(where: { $0.id == toothId }) {
                warehouseBoxes[boxIndex].teeth[toothIndex].isCompleted.toggle()
                if warehouseBoxes[boxIndex].teeth[toothIndex].isCompleted {
                    warehouseBoxes[boxIndex].teeth[toothIndex].completedAt = Date()
                } else {
                    warehouseBoxes[boxIndex].teeth[toothIndex].completedAt = nil
                }
                updateBoxStatus(at: boxIndex)
            }
            return
        }

        // BucketListViewModel과 동기화
        if let item = viewModel.bucketItems.first(where: { $0.id == boxId }),
           let milestone = item.milestones.first(where: { $0.id == toothId }) {
            viewModel.toggleMilestone(item: item, milestone: milestone)
            syncFromBucketList()
        }
    }

    private func updateBoxStatus(at index: Int) {
        if warehouseBoxes[index].isKeyComplete {
            warehouseBoxes[index].status = .ready
        } else {
            warehouseBoxes[index].status = .forging
        }
    }

    // 상자 열기 (버킷 완료)
    func openBox(_ box: TreasureBox) {
        guard let viewModel = bucketListViewModel else {
            // 독립 모드
            if let index = warehouseBoxes.firstIndex(where: { $0.id == box.id }) {
                var openedBox = warehouseBoxes.remove(at: index)
                openedBox.status = .opened
                openedBox.completedAt = Date()
                completedBoxes.insert(CompletedBox(box: openedBox), at: 0)
            }
            return
        }

        // BucketListViewModel과 동기화
        if let item = viewModel.bucketItems.first(where: { $0.id == box.id }) {
            viewModel.completeBucket(item: item)
            syncFromBucketList()
        }
    }

    // 사용자 정의 꿈 추가
    func addCustomBox(_ box: TreasureBox) {
        guard let viewModel = bucketListViewModel else {
            // 독립 모드
            var newBox = box
            newBox.status = .forging
            warehouseBoxes.append(newBox)
            return
        }

        // BucketListViewModel에 추가하고 바로 등반 시작
        let category = convertBoxCategoryToBucketCategory(box.category)

        // 마일스톤 생성
        let milestones = box.teeth.map { tooth in
            Milestone(
                id: tooth.id,
                title: tooth.title,
                description: "",
                successCriteria: []
            )
        }

        viewModel.addBucketItemWithMilestones(
            title: box.title,
            category: category,
            milestones: milestones,
            location: box.location
        )

        // 방금 추가한 아이템 찾아서 등반 시작
        if let newItem = viewModel.bucketItems.first(where: { $0.title == box.title }) {
            viewModel.startClimbing(item: newItem)
        }

        syncFromBucketList()
    }

    // 꿈 포기 (보물창고에 미완료 상태로 보관)
    func abandonBox(_ box: TreasureBox) {
        // 창고에서 제거
        warehouseBoxes.removeAll { $0.id == box.id }

        // 보물창고에 포기 상태로 추가
        var abandonedBox = box
        abandonedBox.status = .opened
        let completedBox = CompletedBox(
            box: abandonedBox,
            completedAt: Date(),
            isAbandoned: true
        )
        completedBoxes.insert(completedBox, at: 0)

        // BucketListViewModel에서도 상태 변경
        if let viewModel = bucketListViewModel,
           let item = viewModel.bucketItems.first(where: { $0.id == box.id }) {
            viewModel.abandonBucket(item: item)
        }

        saveAbandonedBoxes()
    }

    // 포기한 꿈 다시 진행하기
    func resumeBox(_ completedBox: CompletedBox) {
        // 보물창고에서 제거
        completedBoxes.removeAll { $0.id == completedBox.id }

        // 창고로 복귀
        var resumedBox = completedBox.box
        resumedBox.status = .forging
        warehouseBoxes.append(resumedBox)

        // BucketListViewModel에서도 상태 변경
        if let viewModel = bucketListViewModel,
           let item = viewModel.bucketItems.first(where: { $0.id == completedBox.box.id }) {
            viewModel.startClimbing(item: item)
        } else if let viewModel = bucketListViewModel {
            // 아이템이 없으면 새로 추가
            let category = convertBoxCategoryToBucketCategory(completedBox.box.category)
            let milestones = completedBox.box.teeth.map { tooth in
                Milestone(
                    id: tooth.id,
                    title: tooth.title,
                    description: "",
                    successCriteria: [],
                    isCompleted: tooth.isCompleted
                )
            }
            viewModel.addBucketItemWithMilestones(
                title: completedBox.box.title,
                category: category,
                milestones: milestones,
                location: completedBox.box.location
            )
            if let newItem = viewModel.bucketItems.first(where: { $0.title == completedBox.box.title }) {
                viewModel.startClimbing(item: newItem)
            }
        }

        saveAbandonedBoxes()
        syncFromBucketList()
    }

    // 포기한 꿈 완전 삭제
    func permanentlyDeleteBox(_ completedBox: CompletedBox) {
        completedBoxes.removeAll { $0.id == completedBox.id }

        // BucketListViewModel에서도 삭제
        if let viewModel = bucketListViewModel,
           let item = viewModel.bucketItems.first(where: { $0.id == completedBox.box.id }) {
            viewModel.deleteBucket(item: item)
        }

        saveAbandonedBoxes()
    }

    // 포기한 상자 저장/로드
    private func saveAbandonedBoxes() {
        let abandonedBoxes = completedBoxes.filter { $0.isAbandoned }
        if let encoded = try? JSONEncoder().encode(abandonedBoxes) {
            UserDefaults.standard.set(encoded, forKey: "AbandonedBoxes")
        }
    }

    func loadAbandonedBoxes() {
        if let data = UserDefaults.standard.data(forKey: "AbandonedBoxes"),
           let decoded = try? JSONDecoder().decode([CompletedBox].self, from: data) {
            // 기존 completedBoxes에 포기한 상자 추가 (중복 제거)
            let existingIds = Set(completedBoxes.map { $0.id })
            let newAbandonedBoxes = decoded.filter { !existingIds.contains($0.id) }
            completedBoxes.append(contentsOf: newAbandonedBoxes)
        }
    }

    // 상자의 이미지 업데이트
    func updateBoxImage(boxId: UUID, imageName: String) {
        // warehouseBoxes에서 찾기
        if let index = warehouseBoxes.firstIndex(where: { $0.id == boxId }) {
            warehouseBoxes[index].imageName = imageName
        }

        // bucketListViewModel의 해당 아이템도 업데이트
        if let bucketListViewModel = bucketListViewModel,
           let itemIndex = bucketListViewModel.bucketItems.firstIndex(where: { $0.id == boxId }) {
            bucketListViewModel.bucketItems[itemIndex].backgroundImage = imageName
        }
    }

    // Default 이미지 번호 저장 (일관성 유지)
    static func saveDefaultImageNumber(_ number: Int, for boxId: UUID) {
        let key = "DefaultImage_\(boxId.uuidString)"
        UserDefaults.standard.set(number, forKey: key)
    }

    // Default 이미지 번호 불러오기
    static func getDefaultImageNumber(for boxId: UUID) -> Int? {
        let key = "DefaultImage_\(boxId.uuidString)"
        let number = UserDefaults.standard.integer(forKey: key)
        return number > 0 ? number : nil
    }

    // Default 이미지 번호 생성 또는 불러오기
    static func getOrCreateDefaultImageNumber(for boxId: UUID) -> Int {
        if let saved = getDefaultImageNumber(for: boxId) {
            return saved
        }

        // 새로 생성 (UUID를 기반으로 deterministic하게)
        let uuidString = boxId.uuidString
        let hash = uuidString.hashValue
        let number = (abs(hash) % 15) + 1

        saveDefaultImageNumber(number, for: boxId)
        return number
    }
}

// MARK: - Main Tab View (fullScreenCover용)

struct TreasureKeyMainView: View {
    @EnvironmentObject var bucketListViewModel: BucketListViewModel
    @StateObject private var viewModel = TreasureBoxViewModel()
    @State private var selectedTab = 0
    @State private var isInitialized = false
    @Environment(\.dismiss) var dismiss

    var body: some View {
        TabView(selection: $selectedTab) {
            TreasureWarehouseViewWithClose(dismiss: dismiss)
                .tabItem {
                    Label("내 창고", systemImage: "hammer.fill")
                }
                .tag(0)

            TreasureOceanView()
                .tabItem {
                    Label("꿈의 바다", systemImage: "water.waves")
                }
                .tag(1)

            TreasureTreasureView()
                .tabItem {
                    Label("보물함", systemImage: "sparkles")
                }
                .tag(2)
        }
        .environmentObject(viewModel)
        .tint(.keyGold)
        .onAppear {
            if !isInitialized {
                viewModel.setBucketListViewModel(bucketListViewModel)
                isInitialized = true
            }
            viewModel.syncFromBucketList()
        }
    }
}

// fullScreenCover용 내 창고 (닫기 버튼 포함)
struct TreasureWarehouseViewWithClose: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    let dismiss: DismissAction
    @State private var showingSettings = false

    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.warehouseBoxes.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "hammer")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)

                        Text("제작 중인 열쇠가 없어요")
                            .font(.headline)
                            .foregroundColor(.gray)

                        Text("꿈의 바다에서 상자를 가져와 열쇠를 만들어보세요")
                            .font(.subheadline)
                            .foregroundColor(.gray.opacity(0.7))
                            .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 40)
                    .padding(.top, 100)
                } else {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.warehouseBoxes) { box in
                            NavigationLink {
                                ForgeView(box: box)
                            } label: {
                                WarehouseBoxCard(box: box)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("내 창고")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitleColor(.white)
            .background(Color.warehouseBackground.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 24))
                            .foregroundStyle(.white.opacity(0.8), .black.opacity(0.3))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingSettings = true }) {
                        Image(systemName: "gearshape.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.keyGold)
                    }
                }
            }
            .sheet(isPresented: $showingSettings) {
                SettingsView()
            }
        }
    }
}

// MARK: - KeyProgressView Component (핵심!)

struct KeyProgressView: View {
    let teeth: [Tooth]
    var showLabels: Bool = true
    var size: KeySize = .medium

    enum KeySize {
        case small, medium, large

        var handleSize: CGFloat {
            switch self {
            case .small: return 24
            case .medium: return 32
            case .large: return 48
            }
        }

        var bodyHeight: CGFloat {
            switch self {
            case .small: return 8
            case .medium: return 12
            case .large: return 16
            }
        }

        var toothWidth: CGFloat {
            switch self {
            case .small: return 16
            case .medium: return 24
            case .large: return 36
            }
        }

        var toothHeight: CGFloat {
            switch self {
            case .small: return 12
            case .medium: return 18
            case .large: return 28
            }
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // 열쇠 시각화
            HStack(spacing: 0) {
                // 열쇠 손잡이 (원형)
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [.keyGold, .keyBronze],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: size.handleSize, height: size.handleSize)
                    .overlay(
                        Circle()
                            .stroke(Color.keyGold.opacity(0.5), lineWidth: 2)
                    )
                    .shadow(color: .keyGold.opacity(0.3), radius: 4, x: 0, y: 2)

                // 열쇠 몸통
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [.keyGold, .keyBronze],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 20, height: size.bodyHeight)

                // 톱니들
                HStack(spacing: 2) {
                    ForEach(teeth) { tooth in
                        VStack(spacing: 0) {
                            // 상단 톱니 부분 + 패턴
                            ZStack {
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(tooth.isCompleted ?
                                          LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                                          LinearGradient(colors: [Color.gray.opacity(0.3), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                                    )
                                    .frame(width: size.toothWidth, height: size.toothHeight)

                                // 미니 패턴
                                MiniToothPattern(category: tooth.category, isCompleted: tooth.isCompleted)
                                    .frame(width: size.toothWidth, height: size.toothHeight)
                                    .clipShape(RoundedRectangle(cornerRadius: 2))

                                RoundedRectangle(cornerRadius: 2)
                                    .stroke(tooth.isCompleted ? Color.keyGold.opacity(0.5) : Color.gray.opacity(0.3), lineWidth: 1)
                                    .frame(width: size.toothWidth, height: size.toothHeight)
                            }

                            // 하단 연결 부분
                            Rectangle()
                                .fill(tooth.isCompleted ?
                                      LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                                      LinearGradient(colors: [Color.gray.opacity(0.3), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                                )
                                .frame(width: size.toothWidth, height: size.bodyHeight)
                        }
                    }
                }
            }

            // 라벨들
            if showLabels && size != .small {
                HStack(spacing: 0) {
                    Spacer()
                        .frame(width: size.handleSize + 20)

                    HStack(spacing: 2) {
                        ForEach(teeth) { tooth in
                            Text(tooth.title)
                                .font(.system(size: 8))
                                .foregroundColor(tooth.isCompleted ? .keyGold : .gray)
                                .frame(width: size.toothWidth)
                                .lineLimit(1)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - Large Key View (내 창고용 - 가로 방향)

struct LargeKeyView: View {
    let teeth: [Tooth]
    let progress: Double
    @State private var glowAnimation = false

    var body: some View {
        ZStack {
            // 배경 글로우 (완성 시)
            if progress >= 1.0 {
                Ellipse()
                    .fill(Color.keyGold.opacity(0.2))
                    .frame(width: 350, height: 200)
                    .blur(radius: 30)
                    .scaleEffect(glowAnimation ? 1.2 : 1.0)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: glowAnimation)
            }

            HStack(spacing: 0) {
                // 열쇠 손잡이 (원형)
                ZStack {
                    Circle()
                        .fill(
                            RadialGradient(
                                colors: [.keyGold, .keyBronze, .boxDark],
                                center: .center,
                                startRadius: 10,
                                endRadius: 50
                            )
                        )
                        .frame(width: 80, height: 80)

                    Circle()
                        .stroke(
                            LinearGradient(
                                colors: [.keyGold, .keySilver],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ),
                            lineWidth: 3
                        )
                        .frame(width: 80, height: 80)

                    // 내부 장식
                    Circle()
                        .fill(Color.forgeBackground)
                        .frame(width: 32, height: 32)

                    Circle()
                        .stroke(Color.keyGold.opacity(0.5), lineWidth: 2)
                        .frame(width: 32, height: 32)
                }
                .shadow(color: .keyGold.opacity(0.5), radius: 10, x: 0, y: 5)

                // 열쇠 몸통
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [.keyGold, .keyBronze],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 30, height: 20)
                    .overlay(
                        Rectangle()
                            .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                    )

                // 톱니들 (가로 방향)
                HStack(spacing: 3) {
                    ForEach(teeth) { tooth in
                        HorizontalToothView(tooth: tooth)
                    }
                }
            }
        }
        .onAppear {
            if progress >= 1.0 {
                glowAnimation = true
            }
        }
    }
}

// 가로 방향 톱니 뷰 (패턴 포함)
struct HorizontalToothView: View {
    let tooth: Tooth
    @State private var appear = false

    var body: some View {
        HStack(spacing: 0) {
            // 연결부
            Rectangle()
                .fill(tooth.isCompleted ?
                      LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                      LinearGradient(colors: [Color.gray.opacity(0.4), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 12, height: 20)

            // 톱니 몸체 + 패턴
            ZStack {
                // 베이스
                RoundedRectangle(cornerRadius: 4)
                    .fill(tooth.isCompleted ?
                          LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                          LinearGradient(colors: [Color.gray.opacity(0.4), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                    )
                    .frame(width: 40, height: 50)

                // 카테고리별 패턴
                ToothPatternView(category: tooth.category, isCompleted: tooth.isCompleted)
                    .frame(width: 40, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 4))

                // 아이콘과 체크마크
                VStack(spacing: 2) {
                    Image(systemName: tooth.category.icon)
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(tooth.isCompleted ? .forgeBackground : .gray)
                        .shadow(color: tooth.isCompleted ? .keyGold.opacity(0.5) : .clear, radius: 2)

                    if tooth.isCompleted {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 12))
                            .foregroundColor(.green)
                    }
                }

                // 테두리
                RoundedRectangle(cornerRadius: 4)
                    .stroke(tooth.isCompleted ? Color.keyGold.opacity(0.6) : Color.gray.opacity(0.3), lineWidth: 1.5)
                    .frame(width: 40, height: 50)
            }
        }
        .scaleEffect(appear ? 1.0 : 0.8)
        .opacity(appear ? 1.0 : 0.5)
        .onAppear {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7).delay(Double.random(in: 0...0.3))) {
                appear = true
            }
        }
    }
}

// 카테고리별 톱니 패턴 (ToothCategory용)
struct ToothPatternView: View {
    let category: ToothCategory
    let isCompleted: Bool

    var patternColor: Color {
        isCompleted ? Color.forgeBackground.opacity(0.3) : Color.black.opacity(0.3)
    }

    var body: some View {
        GeometryReader { geo in
            switch category {
            case .money:
                // 예산: 다이아몬드 무늬
                DiamondPattern(color: patternColor, size: 12)

            case .time:
                // 시간: 물결 패턴
                WavePattern(color: patternColor, amplitude: 3, frequency: 3)

            case .skill:
                // 스킬: 별 패턴
                StarPattern(color: patternColor, size: 8)

            case .resource:
                // 자원: 도트 패턴
                DotPattern(color: patternColor, dotSize: 3, spacing: 8)

            case .permission:
                // 허가: 체크 패턴
                CheckPattern(color: patternColor)

            case .health:
                // 건강: 하트 패턴
                HeartPattern(color: patternColor, size: 6)
            }
        }
    }
}

// 대각선 줄무늬 패턴
struct DiagonalStripes: View {
    let color: Color
    let lineWidth: CGFloat
    let spacing: CGFloat

    var body: some View {
        GeometryReader { geo in
            Path { path in
                let count = Int((geo.size.width + geo.size.height) / spacing)
                for i in 0..<count {
                    let offset = CGFloat(i) * spacing
                    path.move(to: CGPoint(x: offset - geo.size.height, y: 0))
                    path.addLine(to: CGPoint(x: offset, y: geo.size.height))
                }
            }
            .stroke(color, lineWidth: lineWidth)
        }
    }
}

// 물결 패턴
struct WavePattern: View {
    let color: Color
    let amplitude: CGFloat
    let frequency: CGFloat

    var body: some View {
        GeometryReader { geo in
            Path { path in
                let rowCount = Int(geo.size.height / 10)
                for row in 0..<rowCount {
                    let y = CGFloat(row) * 10 + 5
                    path.move(to: CGPoint(x: 0, y: y))
                    for x in stride(from: 0, to: geo.size.width, by: 2) {
                        let wave = sin(x / geo.size.width * .pi * frequency) * amplitude
                        path.addLine(to: CGPoint(x: x, y: y + wave))
                    }
                }
            }
            .stroke(color, lineWidth: 1.5)
        }
    }
}

// 별 패턴
struct StarPattern: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / (size * 2))
            let rows = Int(geo.size.height / (size * 2))

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    if (row + col) % 2 == 0 {
                        Image(systemName: "star.fill")
                            .font(.system(size: size))
                            .foregroundColor(color)
                            .position(
                                x: CGFloat(col) * size * 2 + size,
                                y: CGFloat(row) * size * 2 + size
                            )
                    }
                }
            }
        }
    }
}

// 도트 패턴
struct DotPattern: View {
    let color: Color
    let dotSize: CGFloat
    let spacing: CGFloat

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / spacing)
            let rows = Int(geo.size.height / spacing)

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    Circle()
                        .fill(color)
                        .frame(width: dotSize, height: dotSize)
                        .position(
                            x: CGFloat(col) * spacing + spacing / 2,
                            y: CGFloat(row) * spacing + spacing / 2
                        )
                }
            }
        }
    }
}

// 하트 패턴
struct HeartPattern: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / (size * 2.5))
            let rows = Int(geo.size.height / (size * 2.5))

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    Image(systemName: "heart.fill")
                        .font(.system(size: size))
                        .foregroundColor(color)
                        .position(
                            x: CGFloat(col) * size * 2.5 + size,
                            y: CGFloat(row) * size * 2.5 + size
                        )
                }
            }
        }
    }
}

// 원형 패턴
struct CirclePattern: View {
    let color: Color
    let circleSize: CGFloat
    let spacing: CGFloat

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / spacing)
            let rows = Int(geo.size.height / spacing)

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    Circle()
                        .stroke(color, lineWidth: 1)
                        .frame(width: circleSize, height: circleSize)
                        .position(
                            x: CGFloat(col) * spacing + spacing / 2,
                            y: CGFloat(row) * spacing + spacing / 2
                        )
                }
            }
        }
    }
}

// 미니 톱니 패턴 (KeyProgressView용 - 작은 사이즈)
struct MiniToothPattern: View {
    let category: ToothCategory
    let isCompleted: Bool

    var patternColor: Color {
        isCompleted ? Color.forgeBackground.opacity(0.25) : Color.white.opacity(0.08)
    }

    var body: some View {
        GeometryReader { geo in
            switch category {
            case .money:
                // 예산: 단순 대각선
                Path { path in
                    path.move(to: CGPoint(x: 0, y: geo.size.height))
                    path.addLine(to: CGPoint(x: geo.size.width, y: 0))
                    path.move(to: CGPoint(x: 0, y: geo.size.height * 0.5))
                    path.addLine(to: CGPoint(x: geo.size.width * 0.5, y: 0))
                }
                .stroke(patternColor, lineWidth: 1.5)

            case .time:
                // 시간: 가로선
                Path { path in
                    for i in 1..<4 {
                        let y = geo.size.height * CGFloat(i) / 4
                        path.move(to: CGPoint(x: 2, y: y))
                        path.addLine(to: CGPoint(x: geo.size.width - 2, y: y))
                    }
                }
                .stroke(patternColor, lineWidth: 1)

            case .skill:
                // 스킬: 중앙 마름모
                Path { path in
                    let cx = geo.size.width / 2
                    let cy = geo.size.height / 2
                    let s: CGFloat = min(geo.size.width, geo.size.height) * 0.3
                    path.move(to: CGPoint(x: cx, y: cy - s))
                    path.addLine(to: CGPoint(x: cx + s, y: cy))
                    path.addLine(to: CGPoint(x: cx, y: cy + s))
                    path.addLine(to: CGPoint(x: cx - s, y: cy))
                    path.closeSubpath()
                }
                .stroke(patternColor, lineWidth: 1.5)

            case .resource:
                // 자원: 점 3개
                HStack(spacing: 2) {
                    ForEach(0..<3, id: \.self) { _ in
                        Circle()
                            .fill(patternColor)
                            .frame(width: 3, height: 3)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            case .permission:
                // 허가: 체크 모양
                Path { path in
                    let cx = geo.size.width / 2
                    let cy = geo.size.height / 2
                    let s: CGFloat = min(geo.size.width, geo.size.height) * 0.2
                    path.move(to: CGPoint(x: cx - s, y: cy))
                    path.addLine(to: CGPoint(x: cx - s * 0.3, y: cy + s * 0.7))
                    path.addLine(to: CGPoint(x: cx + s, y: cy - s * 0.5))
                }
                .stroke(patternColor, lineWidth: 1.5)

            case .health:
                // 건강: + 모양
                Path { path in
                    let cx = geo.size.width / 2
                    let cy = geo.size.height / 2
                    let s: CGFloat = min(geo.size.width, geo.size.height) * 0.25
                    path.move(to: CGPoint(x: cx - s, y: cy))
                    path.addLine(to: CGPoint(x: cx + s, y: cy))
                    path.move(to: CGPoint(x: cx, y: cy - s))
                    path.addLine(to: CGPoint(x: cx, y: cy + s))
                }
                .stroke(patternColor, lineWidth: 1.5)
            }
        }
    }
}

// 체크 패턴 (permission용)
struct CheckPattern: View {
    let color: Color

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / 12)
            let rows = Int(geo.size.height / 12)

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    if (row + col) % 2 == 0 {
                        Path { path in
                            let x = CGFloat(col) * 12 + 3
                            let y = CGFloat(row) * 12 + 6
                            path.move(to: CGPoint(x: x, y: y))
                            path.addLine(to: CGPoint(x: x + 2, y: y + 3))
                            path.addLine(to: CGPoint(x: x + 6, y: y - 2))
                        }
                        .stroke(color, lineWidth: 1.5)
                    }
                }
            }
        }
    }
}

// 다이아몬드 패턴
struct DiamondPattern: View {
    let color: Color
    let size: CGFloat

    var body: some View {
        GeometryReader { geo in
            let cols = Int(geo.size.width / size)
            let rows = Int(geo.size.height / size)

            ForEach(0..<rows, id: \.self) { row in
                ForEach(0..<cols, id: \.self) { col in
                    Path { path in
                        let centerX = CGFloat(col) * size + size / 2
                        let centerY = CGFloat(row) * size + size / 2
                        let halfSize = size / 3

                        // 다이아몬드 형태 그리기
                        path.move(to: CGPoint(x: centerX, y: centerY - halfSize))
                        path.addLine(to: CGPoint(x: centerX + halfSize, y: centerY))
                        path.addLine(to: CGPoint(x: centerX, y: centerY + halfSize))
                        path.addLine(to: CGPoint(x: centerX - halfSize, y: centerY))
                        path.closeSubpath()
                    }
                    .stroke(Color.black, lineWidth: 1.5)
                }
            }
        }
    }
}

struct ToothView: View {
    let tooth: Tooth
    @State private var appear = false

    var body: some View {
        VStack(spacing: 0) {
            // 연결부
            Rectangle()
                .fill(tooth.isCompleted ?
                      LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                      LinearGradient(colors: [Color.gray.opacity(0.4), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 50, height: 16)

            // 톱니 몸체
            RoundedRectangle(cornerRadius: 4)
                .fill(tooth.isCompleted ?
                      LinearGradient(colors: [.keyGold, .keyBronze], startPoint: .top, endPoint: .bottom) :
                      LinearGradient(colors: [Color.gray.opacity(0.4), Color.gray.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 50, height: 60)
                .overlay(
                    VStack(spacing: 4) {
                        Image(systemName: tooth.category.icon)
                            .font(.system(size: 16))
                            .foregroundColor(tooth.isCompleted ? .forgeBackground : .gray)

                        if tooth.isCompleted {
                            Image(systemName: "checkmark.circle.fill")
                                .font(.system(size: 14))
                                .foregroundColor(.green)
                        }
                    }
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(tooth.isCompleted ? Color.keyGold.opacity(0.5) : Color.gray.opacity(0.3), lineWidth: 2)
                )
                .scaleEffect(appear ? 1.0 : 0.8)
                .opacity(appear ? 1.0 : 0.5)
        }
        .onAppear {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7).delay(Double.random(in: 0...0.3))) {
                appear = true
            }
        }
    }
}

// MARK: - Ocean View (꿈의 바다)

struct TreasureOceanView: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @State private var selectedBox: TreasureBox?
    @State private var showingSettings = false

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(viewModel.oceanBoxes) { box in
                        OceanBoxCard(box: box)
                            .onTapGesture {
                                selectedBox = box
                            }
                    }
                }
                .padding()
            }
            .background(
                ZStack {
                    Color.oceanBackgroundAdaptive
                    WaveBackgroundAdaptive()
                }
                .ignoresSafeArea()
            )
            .navigationTitle("꿈의 바다")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingSettings = true }) {
                        Image(systemName: "gearshape")
                            .font(.system(size: 18, weight: .semibold))
                    }
                }
            }
            .sheet(item: $selectedBox) { box in
                OceanBoxDetailSheet(box: box)
                    .environmentObject(viewModel)
            }
            .sheet(isPresented: $showingSettings) {
                NavigationStack {
                    SettingsView()
                }
            }
        }
    }
}

struct WaveBackground: View {
    @State private var phase: CGFloat = 0

    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                let phase = timeline.date.timeIntervalSinceReferenceDate * 0.5

                for i in 0..<3 {
                    var path = Path()
                    let amplitude: CGFloat = 20 - CGFloat(i) * 5
                    let frequency: CGFloat = 0.02 + CGFloat(i) * 0.005
                    let yOffset = size.height * 0.3 + CGFloat(i) * 50

                    path.move(to: CGPoint(x: 0, y: yOffset))

                    for x in stride(from: 0, to: size.width, by: 1) {
                        let y = yOffset + sin(x * frequency + phase + CGFloat(i)) * amplitude
                        path.addLine(to: CGPoint(x: x, y: y))
                    }

                    path.addLine(to: CGPoint(x: size.width, y: size.height))
                    path.addLine(to: CGPoint(x: 0, y: size.height))
                    path.closeSubpath()

                    context.fill(path, with: .color(.white.opacity(0.03 - Double(i) * 0.01)))
                }
            }
        }
    }
}

struct WaveBackgroundAdaptive: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                let phase = timeline.date.timeIntervalSinceReferenceDate * 0.5
                let waveColor = colorScheme == .dark ? Color.white : Color.blue

                for i in 0..<3 {
                    var path = Path()
                    let amplitude: CGFloat = 20 - CGFloat(i) * 5
                    let frequency: CGFloat = 0.02 + CGFloat(i) * 0.005
                    let yOffset = size.height * 0.3 + CGFloat(i) * 50

                    path.move(to: CGPoint(x: 0, y: yOffset))

                    for x in stride(from: 0, to: size.width, by: 1) {
                        let y = yOffset + sin(x * frequency + phase + CGFloat(i)) * amplitude
                        path.addLine(to: CGPoint(x: x, y: y))
                    }

                    path.addLine(to: CGPoint(x: size.width, y: size.height))
                    path.addLine(to: CGPoint(x: 0, y: size.height))
                    path.closeSubpath()

                    let opacity = colorScheme == .dark ? (0.03 - Double(i) * 0.01) : (0.08 - Double(i) * 0.02)
                    context.fill(path, with: .color(waveColor.opacity(opacity)))
                }
            }
        }
    }
}

struct OceanBoxCard: View {
    let box: TreasureBox

    // 배경 이미지 로드 (WarehouseBoxCard와 동일한 로직)
    var backgroundImage: UIImage? {
        let defaultImageNumber = TreasureBoxViewModel.getOrCreateDefaultImageNumber(for: box.id)
        let defaultImage = UIImage(named: "default\(defaultImageNumber)")

        guard let imageName = box.imageName, !imageName.isEmpty else {
            return defaultImage
        }

        // Assets에서 이미지 확인
        if let assetImage = UIImage(named: imageName) {
            return assetImage
        }

        // Documents 디렉토리에서 이미지 로드
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(imageName)
        if let documentImage = UIImage(contentsOfFile: imagePath.path) {
            return documentImage
        }

        return defaultImage
    }

    var body: some View {
        VStack(spacing: 0) {
            // 상단 배경 이미지
            ZStack(alignment: .center) {
                if let image = backgroundImage {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 100)
                        .clipped()
                }

                // 그라디언트 오버레이
                LinearGradient(
                    colors: [Color.clear, Color.black.opacity(0.5)],
                    startPoint: .top,
                    endPoint: .bottom
                )

                // 상자 아이콘 (이미지 위에)
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(
                                colors: [.boxWood, .boxDark],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 60, height: 50)
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 3)

                    Image(systemName: "lock.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.keyGold)
                }
            }
            .frame(height: 100)

            // 하단 정보
            VStack(spacing: 4) {
                Text(box.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                    .multilineTextAlignment(.center)

                HStack(spacing: 4) {
                    Image(systemName: box.category.icon)
                        .font(.caption2)
                    Text(box.category.rawValue)
                        .font(.caption2)
                }
                .foregroundColor(.secondary)

                // 필요한 톱니 개수
                HStack(spacing: 2) {
                    Image(systemName: "key.fill")
                        .font(.caption2)
                    Text("\(box.teeth.count)개 필요")
                        .font(.caption2)
                }
                .foregroundColor(.keyGold)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 8)
            .frame(height: 80)
        }
        .background(Color.cardBackgroundAdaptive)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.cardBorderAdaptive, lineWidth: 1)
        )
        .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 2)
    }
}

struct OceanBoxDetailSheet: View {
    let box: TreasureBox
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                Color.oceanBackgroundAdaptive.ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 24) {
                        // 상자 아이콘
                        ZStack {
                            Circle()
                                .fill(Color.boxWood.opacity(0.2))
                                .frame(width: 120, height: 120)

                            Image(systemName: "shippingbox.fill")
                                .font(.system(size: 50))
                                .foregroundColor(.boxWood)
                        }

                        // 제목
                        VStack(spacing: 8) {
                            Text(box.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)

                            HStack {
                                Image(systemName: box.category.icon)
                                Text(box.category.rawValue)
                            }
                            .font(.subheadline)
                            .foregroundColor(box.category.color)
                        }

                        // 설명
                        if !box.description.isEmpty {
                            Text(box.description)
                                .font(.body)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                        }

                        // 필요한 열쇠 톱니
                        VStack(alignment: .leading, spacing: 12) {
                            Text("열쇠의 톱니 (해결해야 할 것들)")
                                .font(.headline)
                                .foregroundColor(.keyGold)

                            ForEach(box.teeth) { tooth in
                                HStack(spacing: 12) {
                                    Image(systemName: tooth.category.icon)
                                        .foregroundColor(tooth.category.color)
                                        .frame(width: 24)

                                    Text(tooth.title)
                                        .foregroundColor(.primary)

                                    Spacer()
                                }
                                .padding()
                                .background(Color.cardBackgroundAdaptive)
                                .cornerRadius(10)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(16)
                        .padding(.horizontal)

                        // 가져오기 버튼
                        Button(action: {
                            viewModel.moveToWarehouse(box)
                            dismiss()
                        }) {
                            HStack {
                                Image(systemName: "arrow.down.to.line.circle.fill")
                                Text("내 창고로 가져오기")
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.keyGold)
                            .cornerRadius(14)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.vertical)
                }
            }
            .navigationTitle("상자 상세")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("닫기") {
                        dismiss()
                    }
                    .foregroundColor(.keyGold)
                }
            }
        }
    }
}

// MARK: - Warehouse View (내 창고)

struct TreasureWarehouseView: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @Binding var selectedTab: Int
    @State private var selectedBox: TreasureBox?
    @State private var showingAddSheet = false
    @State private var showingSettings = false

    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.warehouseBoxes.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "hammer")
                            .font(.system(size: 60))
                            .foregroundColor(.secondary)

                        Text("제작 중인 열쇠가 없어요")
                            .font(.headline)
                            .foregroundColor(.secondary)

                        Text("새 꿈을 추가하거나\n꿈의 바다에서 상자를 가져와보세요")
                            .font(.subheadline)
                            .foregroundColor(.secondary.opacity(0.7))
                            .multilineTextAlignment(.center)

                        VStack(spacing: 12) {
                            Button(action: { showingAddSheet = true }) {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                    Text("새 꿈 추가하기")
                                }
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: 280)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 12)
                                .background(Color.accentColor)
                                .cornerRadius(12)
                            }

                            Button(action: { selectedTab = 1 }) {
                                HStack {
                                    Image(systemName: "water.waves")
                                    Text("꿈 둘러보기")
                                }
                                .font(.headline)
                                .foregroundColor(.accentColor)
                                .frame(maxWidth: 280)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 12)
                                .background(Color.accentColor.opacity(0.1))
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.accentColor, lineWidth: 2)
                                )
                            }
                        }
                        .padding(.top, 8)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 40)
                    .padding(.top, 100)
                } else {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.warehouseBoxes) { box in
                            NavigationLink {
                                ForgeView(box: box)
                            } label: {
                                WarehouseBoxCard(box: box)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("내 창고")
            .navigationBarTitleDisplayMode(.large)
            .background(Color.warehouseBackgroundAdaptive.ignoresSafeArea())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button(action: { showingAddSheet = true }) {
                            Image(systemName: "plus")
                                .font(.system(size: 18, weight: .semibold))
                        }
                        Button(action: { showingSettings = true }) {
                            Image(systemName: "gearshape")
                                .font(.system(size: 18, weight: .semibold))
                        }
                    }
                }
            }
            .sheet(isPresented: $showingAddSheet) {
                AddNewDreamSheet()
                    .environmentObject(viewModel)
            }
            .sheet(isPresented: $showingSettings) {
                NavigationStack {
                    SettingsView()
                }
            }
        }
    }
}

// MARK: - 새 꿈 추가 시트
struct AddNewDreamSheet: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var selectedCategory: BoxCategory = .travel
    @State private var milestones: [String] = [""]

    var isValid: Bool {
        !title.trimmingCharacters(in: .whitespaces).isEmpty &&
        milestones.contains { !$0.trimmingCharacters(in: .whitespaces).isEmpty }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("어떤 꿈인가요?", text: $title)
                } header: {
                    Text("꿈 제목")
                }

                Section {
                    Picker("카테고리", selection: $selectedCategory) {
                        ForEach(BoxCategory.allCases, id: \.self) { category in
                            HStack {
                                Image(systemName: category.icon)
                                Text(category.rawValue)
                            }
                            .tag(category)
                        }
                    }
                } header: {
                    Text("분류")
                }

                Section {
                    ForEach(milestones.indices, id: \.self) { index in
                        HStack {
                            TextField("단계 \(index + 1)", text: $milestones[index])

                            if milestones.count > 1 {
                                Button(action: {
                                    milestones.remove(at: index)
                                }) {
                                    Image(systemName: "minus.circle.fill")
                                        .foregroundColor(.red)
                                }
                                .buttonStyle(BorderlessButtonStyle())
                            }
                        }
                    }

                    Button(action: {
                        milestones.append("")
                    }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                            Text("단계 추가")
                        }
                    }
                } header: {
                    Text("이루기 위한 단계들")
                } footer: {
                    Text("꿈을 이루기 위해 해야 할 일들을 단계별로 적어보세요")
                }
            }
            .navigationTitle("새 꿈 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") {
                        dismiss()
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("추가") {
                        addNewDream()
                        dismiss()
                    }
                    .fontWeight(.semibold)
                    .disabled(!isValid)
                }
            }
        }
    }

    private func addNewDream() {
        let validMilestones = milestones
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .filter { !$0.isEmpty }

        let teeth = validMilestones.map { milestoneTitle in
            Tooth(
                title: milestoneTitle,
                category: .skill
            )
        }

        let newBox = TreasureBox(
            title: title.trimmingCharacters(in: .whitespaces),
            description: "",
            category: selectedCategory,
            teeth: teeth,
            status: .forging
        )

        viewModel.addCustomBox(newBox)
    }
}

struct WarehouseBoxCard: View {
    let box: TreasureBox

    var statusText: String {
        if box.isKeyComplete {
            return "완료"
        } else if box.progress > 0 {
            return "진행중"
        } else {
            return "시작전"
        }
    }

    var statusColor: Color {
        if box.isKeyComplete {
            return .green
        } else if box.progress > 0 {
            return .blue
        } else {
            return .secondary
        }
    }

    // 이미지 로드 (fallback 처리 포함)
    var backgroundImage: UIImage? {
        // 저장된 또는 새로 생성된 default 이미지 번호 (일관성 유지)
        let defaultImageNumber = TreasureBoxViewModel.getOrCreateDefaultImageNumber(for: box.id)
        let defaultImage = UIImage(named: "default\(defaultImageNumber)")

        guard let imageName = box.imageName, !imageName.isEmpty else {
            return defaultImage
        }

        // Assets에서 이미지 확인
        if let assetImage = UIImage(named: imageName) {
            return assetImage
        }

        // Documents 디렉토리에서 이미지 로드
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(imageName)
        if let documentImage = UIImage(contentsOfFile: imagePath.path) {
            return documentImage
        }

        return defaultImage
    }

    // 카드에 표시할 톱니 (최대 6개, 현재 진행 중인 부분 우선)
    var displayTeeth: [Tooth] {
        let maxDisplay = 6

        if box.teeth.count <= maxDisplay {
            return box.teeth
        }

        // 완료되지 않은 첫 번째 톱니 찾기
        if let firstIncompleteIndex = box.teeth.firstIndex(where: { !$0.isCompleted }) {
            // 앞에 완료된 것 2개 정도 포함하여 컨텍스트 제공
            let startIndex = max(0, firstIncompleteIndex - 2)
            let endIndex = min(box.teeth.count, startIndex + maxDisplay)
            return Array(box.teeth[startIndex..<endIndex])
        } else {
            // 모두 완료된 경우 마지막 6개 표시
            return Array(box.teeth.suffix(maxDisplay))
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // 상단: 제목과 진행률
            HStack(spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(box.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .lineLimit(2)

                    Text(box.category.rawValue)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 4) {
                    Text("\(Int(box.progress * 100))%")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(statusColor)

                    Text(statusText)
                        .font(.caption)
                        .foregroundColor(statusColor)
                }
            }

            // 열쇠 진행 시각화 (최대 6개)
            KeyProgressView(teeth: displayTeeth, showLabels: false, size: .large)
        }
        .padding()
        .background(
            ZStack {
                // 배경 이미지 (존재하지 않으면 자동으로 기본 이미지 사용)
                if let image = backgroundImage {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 140)
                        .clipped()
                }

                // 오버레이
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.cardBackgroundAdaptive.opacity(0.6))
            }
        )
        .frame(height: 140)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.cardBorderAdaptive, lineWidth: 1)
        )
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 2)
    }
}

// MARK: - Forge View (내 창고)

struct ForgeView: View {
    let box: TreasureBox
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @EnvironmentObject var bucketListViewModel: BucketListViewModel
    @State private var showUnlocking = false
    @State private var showDeleteAlert = false
    @State private var showImagePicker = false
    @State private var selectedPhotoItem: PhotosPickerItem?
    @Environment(\.dismiss) var dismiss

    var currentBox: TreasureBox {
        viewModel.warehouseBoxes.first(where: { $0.id == box.id }) ?? box
    }

    var bucketItem: BucketListItem? {
        bucketListViewModel.bucketItems.first(where: { $0.id == box.id })
    }

    // 헤더 이미지 로드 (Documents 디렉토리 포함)
    var headerImage: UIImage? {
        // 저장된 또는 새로 생성된 default 이미지 번호 (일관성 유지)
        let defaultImageNumber = TreasureBoxViewModel.getOrCreateDefaultImageNumber(for: currentBox.id)
        let defaultImage = UIImage(named: "default\(defaultImageNumber)")

        guard let imageName = currentBox.imageName, !imageName.isEmpty else {
            return defaultImage
        }

        // Assets에서 이미지 확인
        if let assetImage = UIImage(named: imageName) {
            return assetImage
        }

        // Documents 디렉토리에서 이미지 로드
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(imageName)
        if let documentImage = UIImage(contentsOfFile: imagePath.path) {
            return documentImage
        }

        return defaultImage
    }

    // 사용자가 커스텀 이미지를 설정했는지 확인
    var hasCustomImage: Bool {
        guard let imageName = currentBox.imageName, !imageName.isEmpty else {
            return false
        }

        // Documents 디렉토리에 파일이 있으면 커스텀 이미지
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(imageName)
        return FileManager.default.fileExists(atPath: imagePath.path)
    }

    // 원래 이미지로 복구
    func resetToDefaultImage() {
        // 커스텀 이미지 파일 삭제
        if let imageName = currentBox.imageName, !imageName.isEmpty {
            let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let imagePath = documentsPath.appendingPathComponent(imageName)
            try? FileManager.default.removeItem(at: imagePath)
        }

        // imageName을 빈 문자열로 설정 (기본 이미지 사용)
        viewModel.updateBoxImage(boxId: currentBox.id, imageName: "")
    }

    var body: some View {
        ZStack {
            // 내 창고 배경
            Color.forgeBackgroundAdaptive
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 24) {
                    // 상단 배경 이미지
                    ZStack {
                        // 배경 이미지
                        if let image = headerImage {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200)
                                .clipped()
                        }

                        // 그라디언트 오버레이 (텍스트 가독성)
                        LinearGradient(
                            colors: [Color.clear, Color.black.opacity(0.7)],
                            startPoint: .top,
                            endPoint: .bottom
                        )

                        // 상자 정보 (이미지 위에 표시)
                        VStack(spacing: 8) {
                            Text(currentBox.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)

                            HStack {
                                Image(systemName: currentBox.category.icon)
                                Text(currentBox.category.rawValue)
                            }
                            .foregroundColor(.white)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        .padding()

                        // 이미지 편집 버튼
                        PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                            Image(systemName: "photo.circle.fill")
                                .font(.system(size: 24))
                                .foregroundColor(.white)
                                .padding(12)
                                .background(Circle().fill(Color.black.opacity(0.5)))
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                        .padding(12)
                    }
                    .frame(height: 200)

                    // 진행률 (열쇠 위에 표시)
                    VStack(spacing: 8) {
                        Text("\(currentBox.completedTeethCount) / \(currentBox.teeth.count) 톱니 완성")
                            .font(.headline)
                            .foregroundColor(.keyGold)

                        ProgressView(value: currentBox.progress)
                            .tint(.keyGold)
                            .scaleEffect(x: 1, y: 2, anchor: .center)
                            .padding(.horizontal, 40)
                    }

                    // 현재 진행 중인 단계 (하나만 표시)
                    CurrentStepSection(
                        box: currentBox,
                        bucketItem: bucketItem,
                        onComplete: { toothId in
                            let generator = UIImpactFeedbackGenerator(style: .medium)
                            generator.impactOccurred()
                            viewModel.toggleTooth(boxId: currentBox.id, toothId: toothId)
                        }
                    )
                    .padding(.horizontal)

                    // 기록 섹션
                    if let item = bucketItem {
                        ForgeNotesSection(item: item)
                            .padding(.horizontal)

                        // 타임라인 섹션
                        TimelineNavigationSection(item: item)
                            .padding(.horizontal)
                    }

                    // 열쇠 완성 시 버튼
                    if currentBox.isKeyComplete {
                        Button(action: {
                            showUnlocking = true
                        }) {
                            HStack {
                                Image(systemName: "key.fill")
                                Text("상자 열기")
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(.forgeBackground)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                LinearGradient(
                                    colors: [.keyGold, .magicSparkle],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(14)
                            .shadow(color: .keyGold.opacity(0.5), radius: 10, x: 0, y: 5)
                        }
                        .padding(.horizontal)
                    }

                    Spacer()
                        .frame(height: 50)
                }
            }
        }
        .navigationTitle("내 창고")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Menu {
                    Button(action: {
                        showImagePicker = true
                    }) {
                        Label("사진 수정하기", systemImage: "photo")
                    }

                    // 커스텀 이미지가 있을 때만 복구 버튼 표시
                    if hasCustomImage {
                        Button(action: {
                            resetToDefaultImage()
                        }) {
                            Label("원래 이미지로 복구", systemImage: "arrow.counterclockwise")
                        }
                    }

                    Button(role: .destructive, action: {
                        showDeleteAlert = true
                    }) {
                        Label("이 꿈 포기하기", systemImage: "trash")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
        .alert("꿈을 포기할까요?", isPresented: $showDeleteAlert) {
            Button("취소", role: .cancel) { }
            Button("포기하기", role: .destructive) {
                viewModel.abandonBox(currentBox)
                dismiss()
            }
        } message: {
            Text("'\(currentBox.title)' 꿈을 보물창고에 보관합니다. 나중에 다시 시작하거나 완전히 삭제할 수 있어요.")
        }
        .fullScreenCover(isPresented: $showUnlocking) {
            UnlockingView(box: currentBox) {
                viewModel.openBox(currentBox)
                dismiss()
            }
        }
        .sheet(isPresented: $showImagePicker) {
            PhotosPicker(selection: $selectedPhotoItem, matching: .images) {
                VStack(spacing: 16) {
                    Image(systemName: "photo.on.rectangle.angled")
                        .font(.system(size: 60))
                        .foregroundColor(.blue)
                    Text("사진 선택하기")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("꿈의 대표 이미지를 변경할 수 있어요")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            }
            .presentationDetents([.medium])
        }
        .onChange(of: selectedPhotoItem) { _, newItem in
            Task {
                if let newItem = newItem,
                   let data = try? await newItem.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    // 이미지를 Documents 디렉토리에 저장
                    let filename = "\(currentBox.id.uuidString)_header.jpg"
                    if let jpegData = uiImage.jpegData(compressionQuality: 0.8) {
                        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                        let filePath = documentsPath.appendingPathComponent(filename)
                        try? jpegData.write(to: filePath)

                        // box의 imageName 업데이트
                        viewModel.updateBoxImage(boxId: currentBox.id, imageName: filename)

                        // sheet 닫기
                        showImagePicker = false
                    }
                }
            }
        }
    }
}

// MARK: - 현재 단계 섹션 (하나씩 질문)

struct CurrentStepSection: View {
    let box: TreasureBox
    let bucketItem: BucketListItem?
    let onComplete: (UUID) -> Void
    @EnvironmentObject var bucketListViewModel: BucketListViewModel

    @State private var showAllSteps = false
    @State private var currentChecklistIndex = 0
    @State private var userAnswer = ""
    @State private var showAnswerField = false
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var selectedImage: UIImage?

    // 현재 진행해야 할 단계 (완료되지 않은 첫 번째)
    var currentTooth: Tooth? {
        box.teeth.first(where: { !$0.isCompleted })
    }

    var currentMilestone: Milestone? {
        guard let tooth = currentTooth, let item = bucketItem else { return nil }
        return item.milestones.first(where: { $0.id == tooth.id })
    }

    var completedCount: Int {
        box.teeth.filter { $0.isCompleted }.count
    }

    // 현재 체크리스트 질문
    var currentQuestion: String? {
        guard let milestone = currentMilestone,
              !milestone.successCriteria.isEmpty,
              currentChecklistIndex < milestone.successCriteria.count else { return nil }
        return milestone.successCriteria[currentChecklistIndex]
    }

    var totalQuestions: Int {
        currentMilestone?.successCriteria.count ?? 0
    }

    var body: some View {
        VStack(spacing: 16) {
            // 헤더
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("지금 해야 할 것")
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("\(completedCount)/\(box.teeth.count) 완료")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                // 전체 보기 버튼
                Button(action: { showAllSteps = true }) {
                    HStack(spacing: 4) {
                        Text("전체 보기")
                            .font(.caption)
                        Image(systemName: "list.bullet")
                            .font(.caption)
                    }
                    .foregroundColor(.keyGold)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 6)
                    .background(Color.keyGold.opacity(0.15))
                    .cornerRadius(8)
                }
            }

            // 현재 단계 카드
            if let tooth = currentTooth {
                CurrentStepCard(
                    tooth: tooth,
                    milestone: currentMilestone,
                    stepNumber: completedCount + 1,
                    currentQuestion: currentQuestion,
                    questionIndex: currentChecklistIndex,
                    totalQuestions: totalQuestions,
                    userAnswer: $userAnswer,
                    showAnswerField: $showAnswerField,
                    selectedPhoto: $selectedPhoto,
                    selectedImage: $selectedImage,
                    onAnswer: { answer, image in
                        // 답변 저장 (사진 포함)
                        saveAnswer(for: tooth, questionIndex: currentChecklistIndex, answer: answer, image: image)

                        // 다음 질문으로 이동 또는 완료
                        if currentChecklistIndex < totalQuestions - 1 {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                currentChecklistIndex += 1
                                userAnswer = ""
                                showAnswerField = false
                                selectedPhoto = nil
                                selectedImage = nil
                            }
                        } else {
                            // 모든 체크리스트 완료 -> 마일스톤 완료
                            onComplete(tooth.id)
                            currentChecklistIndex = 0
                            userAnswer = ""
                            showAnswerField = false
                            selectedPhoto = nil
                            selectedImage = nil
                        }
                    },
                    onSkipToComplete: {
                        // 체크리스트 없이 바로 완료
                        onComplete(tooth.id)
                        currentChecklistIndex = 0
                        userAnswer = ""
                        showAnswerField = false
                        selectedPhoto = nil
                        selectedImage = nil
                    }
                )
            } else {
                // 모든 단계 완료
                AllStepsCompletedCard()
            }
        }
        .padding()
        .background(Color.cardBackgroundAdaptive)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 2)
        .sheet(isPresented: $showAllSteps) {
            AllStepsListView(
                box: box,
                bucketItem: bucketItem,
                onToggle: onComplete
            )
        }
        .onChange(of: currentTooth?.id) { _, _ in
            // 다음 마일스톤으로 넘어갈 때 초기화
            currentChecklistIndex = 0
            userAnswer = ""
            showAnswerField = false
            selectedPhoto = nil
            selectedImage = nil
        }
    }

    // 답변 저장 (사진 포함)
    func saveAnswer(for tooth: Tooth, questionIndex: Int, answer: String, image: UIImage?) {
        guard let item = bucketItem,
              let milestone = currentMilestone,
              questionIndex < milestone.successCriteria.count else { return }

        let question = milestone.successCriteria[questionIndex]

        // 사진 저장
        var photoFileName: String? = nil
        if let image = image {
            photoFileName = saveImageToDocuments(image: image, itemId: item.id)
            if let fileName = photoFileName {
                item.photos.append(fileName)
            }
        }

        // 기록 저장 (사진 파일명 포함)
        var record = "[\(tooth.title)] \(question)\n→ \(answer)"
        if let fileName = photoFileName {
            record += "\n📷 \(fileName)"
        }

        if item.notes.isEmpty {
            item.notes = record
        } else {
            item.notes += "\n\n" + record
        }
    }

    // 사진을 Documents 디렉토리에 저장
    func saveImageToDocuments(image: UIImage, itemId: UUID) -> String? {
        guard let data = image.jpegData(compressionQuality: 0.7) else { return nil }

        let fileName = "\(itemId.uuidString)_\(Date().timeIntervalSince1970).jpg"
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let filePath = documentsPath.appendingPathComponent(fileName)

        do {
            try data.write(to: filePath)
            return fileName
        } catch {
            Logger().error("Failed to save image: \(error.localizedDescription)")
            return nil
        }
    }
}

// 현재 단계 카드
struct CurrentStepCard: View {
    let tooth: Tooth
    let milestone: Milestone?
    let stepNumber: Int
    let currentQuestion: String?
    let questionIndex: Int
    let totalQuestions: Int
    @Binding var userAnswer: String
    @Binding var showAnswerField: Bool
    @Binding var selectedPhoto: PhotosPickerItem?
    @Binding var selectedImage: UIImage?
    let onAnswer: (String, UIImage?) -> Void
    let onSkipToComplete: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // 단계 헤더
            HStack {
                Text("STEP \(stepNumber)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.keyGold)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.keyGold.opacity(0.2))
                    .cornerRadius(4)

                Spacer()

                HStack(spacing: 4) {
                    Image(systemName: tooth.category.icon)
                        .font(.caption)
                    Text(tooth.category.rawValue)
                        .font(.caption)
                }
                .foregroundColor(tooth.category.color)
            }

            // 마일스톤 이름
            Text(tooth.title)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)

            // 체크리스트 질문이 있으면
            if let question = currentQuestion {
                VStack(alignment: .leading, spacing: 12) {
                    // 진행률
                    HStack {
                        Text("\(questionIndex + 1)/\(totalQuestions)")
                            .font(.caption)
                            .foregroundColor(.keyGold)

                        GeometryReader { geo in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 2)
                                    .fill(Color.secondary.opacity(0.2))
                                    .frame(height: 4)

                                RoundedRectangle(cornerRadius: 2)
                                    .fill(Color.keyGold)
                                    .frame(width: geo.size.width * CGFloat(questionIndex + 1) / CGFloat(totalQuestions), height: 4)
                            }
                        }
                        .frame(height: 4)
                    }

                    // 질문
                    Text(question)
                        .font(.body)
                        .foregroundColor(.primary)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(12)

                    // 답변 입력 필드
                    if showAnswerField {
                        VStack(alignment: .leading, spacing: 12) {
                            TextField("내 답변...", text: $userAnswer, axis: .vertical)
                                .textFieldStyle(.plain)
                                .padding()
                                .background(Color(UIColor.secondarySystemBackground))
                                .cornerRadius(10)
                                .foregroundColor(.primary)
                                .lineLimit(2...4)

                            // 사진 선택 영역
                            HStack(spacing: 12) {
                                // 선택된 사진 미리보기
                                if let image = selectedImage {
                                    ZStack(alignment: .topTrailing) {
                                        Image(uiImage: image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 80, height: 80)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))

                                        // 삭제 버튼
                                        Button(action: {
                                            withAnimation {
                                                selectedPhoto = nil
                                                selectedImage = nil
                                            }
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .font(.system(size: 20))
                                                .foregroundColor(.white)
                                                .background(Circle().fill(Color.black.opacity(0.5)))
                                        }
                                        .offset(x: 6, y: -6)
                                    }
                                }

                                // 사진 추가 버튼
                                PhotosPicker(selection: $selectedPhoto, matching: .images) {
                                    VStack(spacing: 4) {
                                        Image(systemName: selectedImage == nil ? "photo.badge.plus" : "arrow.triangle.2.circlepath")
                                            .font(.title2)
                                        Text(selectedImage == nil ? "사진 추가" : "변경")
                                            .font(.caption2)
                                    }
                                    .foregroundColor(.keyGold)
                                    .frame(width: 80, height: 80)
                                    .background(Color.keyGold.opacity(0.15))
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.keyGold.opacity(0.3), style: StrokeStyle(lineWidth: 1, dash: [5]))
                                    )
                                }
                                .onChange(of: selectedPhoto) { _, newItem in
                                    Task {
                                        if let data = try? await newItem?.loadTransferable(type: Data.self),
                                           let uiImage = UIImage(data: data) {
                                            await MainActor.run {
                                                selectedImage = uiImage
                                            }
                                        }
                                    }
                                }

                                Spacer()
                            }

                            // 완료 버튼
                            Button(action: {
                                onAnswer(userAnswer.isEmpty ? "확인함" : userAnswer, selectedImage)
                            }) {
                                HStack {
                                    Image(systemName: "checkmark")
                                    Text(questionIndex == totalQuestions - 1 ? "완료!" : "다음")
                                }
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14)
                                .background(
                                    LinearGradient(
                                        colors: [.keyGold, .magicSparkle],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(12)
                            }
                        }
                    } else {
                        // 기록하기 버튼
                        Button(action: {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                showAnswerField = true
                            }
                        }) {
                            HStack {
                                Image(systemName: "pencil")
                                Text("기록하기")
                            }
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(Color(UIColor.secondarySystemBackground))
                            .cornerRadius(12)
                        }
                    }
                }
            } else {
                // 체크리스트 없으면 바로 완료 버튼
                if let desc = milestone?.description, !desc.isEmpty {
                    Text(desc)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }

                Button(action: onSkipToComplete) {
                    HStack {
                        Image(systemName: "checkmark")
                        Text("완료했어요!")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(
                        LinearGradient(
                            colors: [.keyGold, .magicSparkle],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(12)
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(UIColor.tertiarySystemBackground))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                )
        )
    }
}

// 모든 단계 완료 카드
struct AllStepsCompletedCard: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "checkmark.seal.fill")
                .font(.system(size: 50))
                .foregroundColor(.keyGold)

            Text("모든 준비가 완료되었어요!")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)

            Text("이제 상자를 열 수 있어요")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 32)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.keyGold.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                )
        )
    }
}

// MARK: - 전체 단계 리스트 뷰

struct AllStepsListView: View {
    let box: TreasureBox
    let bucketItem: BucketListItem?
    let onToggle: (UUID) -> Void
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    // 진행률 헤더
                    ProgressHeader(box: box)
                        .padding()

                    // 단계 리스트
                    VStack(spacing: 12) {
                        ForEach(Array(box.teeth.enumerated()), id: \.element.id) { index, tooth in
                            StepListRow(
                                tooth: tooth,
                                milestone: bucketItem?.milestones.first(where: { $0.id == tooth.id }),
                                stepNumber: index + 1,
                                isCurrentStep: !tooth.isCompleted && box.teeth.prefix(index).allSatisfy { $0.isCompleted },
                                onToggle: { onToggle(tooth.id) }
                            )
                        }
                    }
                    .padding()
                }
            }
            .background(Color.forgeBackgroundAdaptive.ignoresSafeArea())
            .navigationTitle("전체 단계")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("닫기") { dismiss() }
                        .foregroundColor(.keyGold)
                }
            }
        }
    }
}

// 진행률 헤더
struct ProgressHeader: View {
    let box: TreasureBox

    var completedCount: Int {
        box.teeth.filter { $0.isCompleted }.count
    }

    var body: some View {
        VStack(spacing: 12) {
            // 열쇠 미니 시각화
            KeyProgressView(teeth: box.teeth, showLabels: false, size: .medium)

            HStack {
                Text("\(completedCount)/\(box.teeth.count) 단계 완료")
                    .font(.subheadline)
                    .foregroundColor(.primary)

                Spacer()

                Text("\(Int(box.progress * 100))%")
                    .font(.headline)
                    .foregroundColor(.keyGold)
            }

            ProgressView(value: box.progress)
                .tint(.keyGold)
                .scaleEffect(x: 1, y: 1.5, anchor: .center)
        }
        .padding()
        .background(Color.cardBackgroundAdaptive)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 6, x: 0, y: 2)
    }
}

// 단계 리스트 행
struct StepListRow: View {
    let tooth: Tooth
    let milestone: Milestone?
    let stepNumber: Int
    let isCurrentStep: Bool
    let onToggle: () -> Void

    @State private var isExpanded = false

    var body: some View {
        VStack(spacing: 0) {
            // 메인 행
            HStack(spacing: 16) {
                // 단계 번호/체크
                ZStack {
                    Circle()
                        .fill(tooth.isCompleted ? Color.green : (isCurrentStep ? Color.keyGold : Color.secondary.opacity(0.3)))
                        .frame(width: 32, height: 32)

                    if tooth.isCompleted {
                        Image(systemName: "checkmark")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                    } else {
                        Text("\(stepNumber)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(isCurrentStep ? .white : .primary)
                    }
                }

                // 내용
                VStack(alignment: .leading, spacing: 4) {
                    Text(tooth.title)
                        .font(.body)
                        .foregroundColor(tooth.isCompleted ? .secondary : .primary)
                        .strikethrough(tooth.isCompleted)

                    if let milestone = milestone, !milestone.description.isEmpty {
                        Text(milestone.description)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }

                Spacer()

                // 펼치기/접기 버튼 (성공 기준이 있을 때)
                if let milestone = milestone, !milestone.successCriteria.isEmpty {
                    Button(action: {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                            isExpanded.toggle()
                        }
                    }) {
                        Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                            .font(.caption)
                            .foregroundColor(.secondary)
                            .padding(8)
                    }
                }

                // 토글 버튼
                Button(action: onToggle) {
                    Image(systemName: tooth.isCompleted ? "arrow.uturn.backward" : "checkmark")
                        .font(.caption)
                        .foregroundColor(tooth.isCompleted ? .secondary : .keyGold)
                        .padding(8)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(isCurrentStep ? Color.keyGold.opacity(0.1) : Color.cardBackgroundAdaptive)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(isCurrentStep ? Color.keyGold.opacity(0.3) : Color.cardBorderAdaptive, lineWidth: 1)
                    )
            )

            // 성공 기준 (펼쳤을 때)
            if isExpanded, let milestone = milestone, !milestone.successCriteria.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(milestone.successCriteria, id: \.self) { criteria in
                        HStack(alignment: .top, spacing: 8) {
                            Image(systemName: "circle")
                                .font(.system(size: 6))
                                .foregroundColor(.keyGold.opacity(0.6))
                                .padding(.top, 5)
                            Text(criteria)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(12)
                .padding(.top, 4)
            }
        }
    }
}

// 기록 섹션
struct ForgeNotesSection: View {
    @ObservedObject var item: BucketListItem
    @State private var showAllRecords = false

    // 기록을 파싱해서 질문-답변-사진 쌍으로 변환
    var records: [(milestone: String, question: String, answer: String, photoFilename: String?)] {
        guard !item.notes.isEmpty else { return [] }

        var result: [(String, String, String, String?)] = []
        let blocks = item.notes.components(separatedBy: "\n\n")

        for block in blocks {
            let lines = block.components(separatedBy: "\n")
            if lines.count >= 2 {
                let firstLine = lines[0]
                let answerLine = lines[1]
                var photoFilename: String? = nil

                // 사진 정보 파싱 (📷 filename.jpg 형식)
                if lines.count >= 3 && lines[2].hasPrefix("📷 ") {
                    photoFilename = String(lines[2].dropFirst(2)).trimmingCharacters(in: .whitespaces)
                }

                // [마일스톤] 질문 형식 파싱
                if firstLine.hasPrefix("["),
                   let endBracket = firstLine.firstIndex(of: "]") {
                    let milestone = String(firstLine[firstLine.index(after: firstLine.startIndex)..<endBracket])
                    let question = String(firstLine[firstLine.index(after: endBracket)...]).trimmingCharacters(in: .whitespaces)
                    let answer = answerLine.hasPrefix("→ ") ? String(answerLine.dropFirst(2)) : answerLine

                    result.append((milestone, question, answer, photoFilename))
                }
            }
        }

        return result
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // 헤더
            HStack {
                Image(systemName: "note.text")
                    .foregroundColor(.keyGold)
                Text("내 기록")
                    .font(.headline)
                    .foregroundColor(.primary)

                Spacer()

                if !records.isEmpty {
                    Text("\(records.count)개")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }

            if records.isEmpty {
                // 기록 없을 때
                VStack(spacing: 8) {
                    Image(systemName: "pencil.and.list.clipboard")
                        .font(.system(size: 24))
                        .foregroundColor(.secondary.opacity(0.5))

                    Text("아직 기록이 없어요")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Text("질문에 답하면 여기에 저장돼요")
                        .font(.caption)
                        .foregroundColor(.secondary.opacity(0.7))
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
            } else {
                // 최근 기록 미리보기 (최대 2개)
                VStack(spacing: 8) {
                    ForEach(Array(records.suffix(2).enumerated()), id: \.offset) { _, record in
                        RecordPreviewCard(record: record)
                    }
                }

                // 전체 보기 버튼
                if records.count > 2 {
                    Button(action: { showAllRecords = true }) {
                        HStack {
                            Text("전체 기록 보기")
                                .font(.subheadline)
                            Image(systemName: "chevron.right")
                                .font(.caption)
                        }
                        .foregroundColor(.keyGold)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(Color.keyGold.opacity(0.1))
                        .cornerRadius(10)
                    }
                }
            }
        }
        .padding()
        .background(Color.cardBackgroundAdaptive)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 2)
        .sheet(isPresented: $showAllRecords) {
            AllRecordsView(records: records, itemTitle: item.title)
        }
    }
}

// 기록 미리보기 카드
struct RecordPreviewCard: View {
    let record: (milestone: String, question: String, answer: String, photoFilename: String?)

    var body: some View {
        HStack(spacing: 12) {
            VStack(alignment: .leading, spacing: 8) {
                // 마일스톤 태그
                Text(record.milestone)
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(.keyGold)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(Color.keyGold.opacity(0.2))
                    .cornerRadius(4)

                // 질문
                Text(record.question)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .lineLimit(1)

                // 답변
                Text(record.answer)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .lineLimit(2)
            }

            Spacer()

            // 사진 썸네일
            if let photoFilename = record.photoFilename,
               let image = loadImageFromDocuments(filename: photoFilename) {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12)
        .background(Color.white.opacity(0.05))
        .cornerRadius(10)
    }

    private func loadImageFromDocuments(filename: String) -> UIImage? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(filename)
        return UIImage(contentsOfFile: imagePath.path)
    }
}

// 전체 기록 뷰
struct AllRecordsView: View {
    let records: [(milestone: String, question: String, answer: String, photoFilename: String?)]
    let itemTitle: String
    @Environment(\.dismiss) var dismiss

    // 마일스톤별로 그룹화
    var groupedRecords: [(milestone: String, items: [(question: String, answer: String, photoFilename: String?)])] {
        var dict: [String: [(String, String, String?)]] = [:]
        var order: [String] = []

        for record in records {
            if dict[record.milestone] == nil {
                dict[record.milestone] = []
                order.append(record.milestone)
            }
            dict[record.milestone]?.append((record.question, record.answer, record.photoFilename))
        }

        return order.map { milestone in
            (milestone, dict[milestone] ?? [])
        }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(Array(groupedRecords.enumerated()), id: \.offset) { _, group in
                        VStack(alignment: .leading, spacing: 12) {
                            // 마일스톤 헤더
                            HStack {
                                Image(systemName: "flag.fill")
                                    .font(.caption)
                                    .foregroundColor(.keyGold)
                                Text(group.milestone)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }

                            // 질문-답변 리스트
                            VStack(spacing: 12) {
                                ForEach(Array(group.items.enumerated()), id: \.offset) { index, item in
                                    RecordDetailCard(
                                        question: item.0,
                                        answer: item.1,
                                        photoFilename: item.2,
                                        index: index + 1
                                    )
                                }
                            }
                        }
                        .padding()
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(16)
                    }
                }
                .padding()
            }
            .background(Color.forgeBackground.ignoresSafeArea())
            .navigationTitle("내 기록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(Color.forgeBackground, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("닫기") { dismiss() }
                        .foregroundColor(.keyGold)
                }
            }
        }
    }
}

// 기록 상세 카드
struct RecordDetailCard: View {
    let question: String
    let answer: String
    let photoFilename: String?
    let index: Int
    @State private var showFullImage = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // 질문
            HStack(alignment: .top, spacing: 8) {
                Text("Q\(index)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.keyGold)
                    .frame(width: 24)

                Text(question)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            // 답변
            HStack(alignment: .top, spacing: 8) {
                Text("A")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.white.opacity(0.5))
                    .frame(width: 24)

                Text(answer)
                    .font(.body)
                    .foregroundColor(.white)
            }

            // 사진
            if let photoFilename = photoFilename,
               let image = loadImageFromDocuments(filename: photoFilename) {
                Button(action: { showFullImage = true }) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                        )
                }
                .sheet(isPresented: $showFullImage) {
                    PhotoFullScreenView(image: image)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white.opacity(0.05))
        .cornerRadius(12)
    }

    private func loadImageFromDocuments(filename: String) -> UIImage? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(filename)
        return UIImage(contentsOfFile: imagePath.path)
    }
}

// 사진 전체화면 보기
struct PhotoFullScreenView: View {
    let image: UIImage
    @Environment(\.dismiss) var dismiss
    @State private var scale: CGFloat = 1.0

    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width, height: geo.size.height)
                    .scaleEffect(scale)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                scale = value
                            }
                            .onEnded { _ in
                                withAnimation {
                                    scale = max(1.0, min(scale, 3.0))
                                }
                            }
                    )
            }
            .background(Color.black.ignoresSafeArea())
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            .foregroundColor(.white.opacity(0.7))
                    }
                }
            }
        }
    }
}

struct ForgeFireEffect: View {
    @State private var animate = false

    var body: some View {
        ZStack {
            // 여러 층의 불꽃 그라데이션
            ForEach(0..<3, id: \.self) { i in
                Ellipse()
                    .fill(
                        RadialGradient(
                            colors: [
                                Color.orange.opacity(0.8 - Double(i) * 0.2),
                                Color.red.opacity(0.5 - Double(i) * 0.1),
                                Color.clear
                            ],
                            center: .center,
                            startRadius: 0,
                            endRadius: 150
                        )
                    )
                    .frame(width: 300 + CGFloat(i) * 50, height: 100 + CGFloat(i) * 20)
                    .offset(y: animate ? CGFloat(i) * 5 : CGFloat(i) * -5)
                    .animation(
                        .easeInOut(duration: 0.8 + Double(i) * 0.2).repeatForever(autoreverses: true),
                        value: animate
                    )
            }
        }
        .onAppear {
            animate = true
        }
    }
}

struct ToothRow: View {
    let tooth: Tooth
    let onToggle: () -> Void
    @State private var pressed = false

    var body: some View {
        Button(action: onToggle) {
            HStack(spacing: 16) {
                // 체크 원
                ZStack {
                    Circle()
                        .stroke(tooth.isCompleted ? Color.green : Color.gray, lineWidth: 2)
                        .frame(width: 28, height: 28)

                    if tooth.isCompleted {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 20, height: 20)

                        Image(systemName: "checkmark")
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.white)
                    }
                }

                // 카테고리 아이콘
                Image(systemName: tooth.category.icon)
                    .foregroundColor(tooth.category.color)
                    .frame(width: 24)

                // 제목
                Text(tooth.title)
                    .font(.body)
                    .foregroundColor(tooth.isCompleted ? .gray : .white)
                    .strikethrough(tooth.isCompleted)

                Spacer()

                // 완료 날짜
                if tooth.isCompleted, let date = tooth.completedAt {
                    Text(date, style: .date)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(tooth.isCompleted ? Color.green.opacity(0.1) : Color.white.opacity(0.05))
            )
            .scaleEffect(pressed ? 0.98 : 1.0)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal)
        .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                pressed = pressing
            }
        }, perform: {})
    }
}

// MARK: - Unlocking View (상자 열기 애니메이션)

struct UnlockingView: View {
    let box: TreasureBox
    let onComplete: () -> Void

    @Environment(\.dismiss) var dismiss
    @State private var phase: UnlockPhase = .ready
    @State private var keyOffset: CGFloat = -100
    @State private var keyRotation: Double = 0
    @State private var boxScale: CGFloat = 1.0
    @State private var boxOpen = false
    @State private var showSparkles = false
    @State private var showCongrats = false

    enum UnlockPhase {
        case ready, inserting, turning, opening, complete
    }

    var body: some View {
        ZStack {
            Color.forgeBackground.ignoresSafeArea()

            VStack(spacing: 40) {
                Spacer()

                // 상자 + 열쇠
                ZStack {
                    // 상자
                    ZStack {
                        // 상자 몸체
                        RoundedRectangle(cornerRadius: 20)
                            .fill(
                                LinearGradient(
                                    colors: [.boxWood, .boxDark],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                            .frame(width: 150, height: 120)

                        // 자물쇠
                        if !boxOpen {
                            Image(systemName: "lock.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.keyGold)
                        }

                        // 열린 상자 뚜껑
                        if boxOpen {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(
                                    LinearGradient(
                                        colors: [.boxWood, .boxDark],
                                        startPoint: .top,
                                        endPoint: .bottom
                                    )
                                )
                                .frame(width: 150, height: 30)
                                .offset(y: -80)
                                .rotation3DEffect(.degrees(-60), axis: (x: 1, y: 0, z: 0))
                        }
                    }
                    .scaleEffect(boxScale)

                    // 열쇠
                    if phase == .ready || phase == .inserting || phase == .turning {
                        Image(systemName: "key.horizontal.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.keyGold)
                            .rotationEffect(.degrees(keyRotation))
                            .offset(x: keyOffset, y: 0)
                            .shadow(color: .keyGold.opacity(0.5), radius: 10)
                    }

                    // 빛 효과
                    if showSparkles {
                        ForEach(0..<12, id: \.self) { i in
                            Image(systemName: "sparkle")
                                .font(.system(size: CGFloat.random(in: 20...40)))
                                .foregroundColor(.keyGold)
                                .offset(
                                    x: CGFloat.random(in: -100...100),
                                    y: CGFloat.random(in: -100...50)
                                )
                                .opacity(Double.random(in: 0.5...1.0))
                                .scaleEffect(showSparkles ? 1.5 : 0)
                                .animation(
                                    .spring(response: 0.5, dampingFraction: 0.5)
                                    .delay(Double(i) * 0.05),
                                    value: showSparkles
                                )
                        }
                    }
                }

                // 텍스트
                VStack(spacing: 12) {
                    if showCongrats {
                        Text("🎉 축하합니다!")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.keyGold)

                        Text(box.title)
                            .font(.title2)
                            .foregroundColor(.white)

                        Text("보물을 획득했습니다!")
                            .foregroundColor(.white.opacity(0.8))
                    } else {
                        Text(phaseText)
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                }

                Spacer()

                // 버튼
                if showCongrats {
                    Button(action: {
                        onComplete()
                        dismiss()
                    }) {
                        Text("보물창고에서 확인하기")
                            .fontWeight(.semibold)
                            .foregroundColor(.forgeBackground)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.keyGold)
                            .cornerRadius(14)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)
                }
            }
        }
        .onAppear {
            startAnimation()
        }
    }

    var phaseText: String {
        switch phase {
        case .ready: return "열쇠를 준비하는 중..."
        case .inserting: return "열쇠를 넣는 중..."
        case .turning: return "열쇠를 돌리는 중..."
        case .opening: return "상자가 열리고 있어요!"
        case .complete: return ""
        }
    }

    func startAnimation() {
        // 1. 열쇠 삽입
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            phase = .inserting
            withAnimation(.easeOut(duration: 0.8)) {
                keyOffset = 0
            }
        }

        // 2. 열쇠 회전
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            phase = .turning
            withAnimation(.easeInOut(duration: 0.3)) {
                keyRotation = 90
            }

            // 햅틱
            let generator = UIImpactFeedbackGenerator(style: .heavy)
            generator.impactOccurred()
        }

        // 3. 상자 열기
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            phase = .opening
            withAnimation(.spring(response: 0.5, dampingFraction: 0.6)) {
                boxScale = 1.1
                boxOpen = true
            }

            // 햅틱
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.success)
        }

        // 4. 빛 효과
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
            withAnimation {
                showSparkles = true
            }
        }

        // 5. 완료
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.8) {
            phase = .complete
            withAnimation(.spring()) {
                showCongrats = true
                boxScale = 1.0
            }
        }
    }
}

// MARK: - Treasure View (보물창고)

struct TreasureTreasureView: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @State private var showingSettings = false

    // 완료된 꿈 (성공적으로 달성)
    var completedDreams: [CompletedBox] {
        viewModel.completedBoxes.filter { !$0.isAbandoned }
    }

    // 포기한 꿈 (나중에 다시 시작 가능)
    var abandonedDreams: [CompletedBox] {
        viewModel.completedBoxes.filter { $0.isAbandoned }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.completedBoxes.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "sparkles")
                            .font(.system(size: 60))
                            .foregroundColor(.keyGold.opacity(0.5))

                        Text("아직 열린 상자가 없어요")
                            .font(.headline)
                            .foregroundColor(.secondary)

                        Text("열쇠를 완성하고 상자를 열어보세요!")
                            .font(.subheadline)
                            .foregroundColor(.secondary.opacity(0.7))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 100)
                } else {
                    LazyVStack(spacing: 16) {
                        // 완료된 꿈 섹션
                        if !completedDreams.isEmpty {
                            Section {
                                ForEach(completedDreams) { completed in
                                    TreasureCard(completedBox: completed)
                                }
                            } header: {
                                HStack {
                                    Image(systemName: "trophy.fill")
                                        .foregroundColor(.keyGold)
                                    Text("달성한 꿈")
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.top, 8)
                            }
                        }

                        // 포기한 꿈 섹션
                        if !abandonedDreams.isEmpty {
                            Section {
                                ForEach(abandonedDreams) { abandoned in
                                    AbandonedDreamCard(completedBox: abandoned)
                                }
                            } header: {
                                HStack {
                                    Image(systemName: "pause.circle.fill")
                                        .foregroundColor(.secondary)
                                    Text("잠시 멈춘 꿈")
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.top, 24)
                            }
                        }
                    }
                    .padding()
                }
            }
            .background(Color.treasureBackgroundAdaptive.ignoresSafeArea())
            .navigationTitle("보물함")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingSettings = true }) {
                        Image(systemName: "gearshape")
                            .font(.system(size: 18, weight: .semibold))
                    }
                }
            }
            .sheet(isPresented: $showingSettings) {
                NavigationStack {
                    SettingsView()
                }
            }
        }
    }
}

// MARK: - 포기한 꿈 카드
struct AbandonedDreamCard: View {
    let completedBox: CompletedBox
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @State private var showResumeAlert = false
    @State private var showDeleteAlert = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 16) {
                // 닫힌 상자 아이콘 (아직 열지 않은 보물상자)
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(UIColor.secondarySystemBackground))
                        .frame(width: 56, height: 48)

                    Image(systemName: "shippingbox.fill")
                        .font(.system(size: 24))
                        .foregroundColor(.secondary)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text(completedBox.box.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    HStack {
                        Image(systemName: completedBox.box.category.icon)
                        Text(completedBox.box.category.rawValue)
                    }
                    .font(.caption)
                    .foregroundColor(completedBox.box.category.color)
                }

                Spacer()

                // 진행률 표시
                Text("\(Int(completedBox.box.progress * 100))%")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color(UIColor.tertiarySystemBackground))
                    .cornerRadius(8)
            }

            // 포기 날짜
            HStack {
                Image(systemName: "calendar")
                Text("멈춘 날: ")
                Text(completedBox.completedAt, style: .date)
            }
            .font(.caption)
            .foregroundColor(.secondary)

            // 액션 버튼들
            HStack(spacing: 12) {
                Button(action: { showResumeAlert = true }) {
                    HStack {
                        Image(systemName: "play.fill")
                        Text("다시 시작")
                    }
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color.blue)
                    .cornerRadius(10)
                }

                Button(action: { showDeleteAlert = true }) {
                    HStack {
                        Image(systemName: "trash")
                        Text("완전 삭제")
                    }
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color.red.opacity(0.1))
                    .cornerRadius(10)
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.cardBackgroundAdaptive)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.secondary.opacity(0.2), lineWidth: 1)
                )
        )
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
        .alert("다시 시작할까요?", isPresented: $showResumeAlert) {
            Button("취소", role: .cancel) { }
            Button("다시 시작", role: .none) {
                viewModel.resumeBox(completedBox)
            }
        } message: {
            Text("'\(completedBox.box.title)' 꿈을 내 창고로 다시 가져갑니다.")
        }
        .alert("완전히 삭제할까요?", isPresented: $showDeleteAlert) {
            Button("취소", role: .cancel) { }
            Button("삭제", role: .destructive) {
                viewModel.permanentlyDeleteBox(completedBox)
            }
        } message: {
            Text("'\(completedBox.box.title)' 꿈을 완전히 삭제합니다. 이 작업은 되돌릴 수 없어요.")
        }
    }
}

struct TreasureCard: View {
    let completedBox: CompletedBox

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack(spacing: 16) {
                // 열린 상자 아이콘
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(
                                colors: [.keyGold.opacity(0.3), .magicSparkle.opacity(0.2)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 56, height: 48)

                    Image(systemName: "gift.fill")
                        .font(.system(size: 24))
                        .foregroundColor(.keyGold)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text(completedBox.box.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    HStack {
                        Image(systemName: completedBox.box.category.icon)
                        Text(completedBox.box.category.rawValue)
                    }
                    .font(.caption)
                    .foregroundColor(completedBox.box.category.color)
                }

                Spacer()

                // 별점
                HStack(spacing: 2) {
                    ForEach(0..<5, id: \.self) { i in
                        Image(systemName: i < completedBox.rating ? "star.fill" : "star")
                            .font(.caption)
                            .foregroundColor(.keyGold)
                    }
                }
            }

            // 완료 날짜
            HStack {
                Image(systemName: "calendar")
                Text(completedBox.completedAt, style: .date)
            }
            .font(.caption)
            .foregroundColor(.secondary)

            // 메모
            if !completedBox.memo.isEmpty {
                Text("\"\(completedBox.memo)\"")
                    .font(.body)
                    .italic()
                    .foregroundColor(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.cardBackgroundAdaptive)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                )
        )
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 2)
    }
}

// MARK: - Timeline Navigation Section

struct TimelineNavigationSection: View {
    @ObservedObject var item: BucketListItem
    @EnvironmentObject var bucketListViewModel: BucketListViewModel

    // 모든 진행 기록 계산
    var totalRecordsCount: Int {
        var count = 0
        for milestone in item.milestones {
            count += milestone.progressRecords.count
            for checklistItem in milestone.checklist {
                count += checklistItem.progressRecords.count
            }
        }
        return count
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // 헤더
            HStack {
                Image(systemName: "clock.arrow.circlepath")
                    .foregroundColor(.keyGold)
                Text("진행 타임라인")
                    .font(.headline)
                    .foregroundColor(.primary)

                Spacer()

                if totalRecordsCount > 0 {
                    Text("\(totalRecordsCount)개")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }

            // 타임라인 버튼
            NavigationLink {
                ProgressTimelineView(item: item)
                    .environmentObject(bucketListViewModel)
            } label: {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        if totalRecordsCount == 0 {
                            Text("아직 진행 기록이 없어요")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text("사진과 함께 진행 과정을 기록해보세요")
                                .font(.caption)
                                .foregroundColor(.secondary.opacity(0.7))
                        } else {
                            Text("진행 과정 보기")
                                .font(.subheadline)
                                .foregroundColor(.primary)
                            Text("사진과 함께 기록된 나의 여정")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.cardBackgroundAdaptive)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.keyGold.opacity(0.2), lineWidth: 1)
                        )
                )
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.forgeBackgroundAdaptive.opacity(0.5))
        )
    }
}

// MARK: - Preview

#Preview {
    TreasureKeyMainView()
}
