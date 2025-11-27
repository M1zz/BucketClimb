//
//  TreasureKeyView.swift
//  BucketClimb
//
//  꿈 대장간 - 열쇠와 보물상자 메타포 UI
//

import SwiftUI
import PhotosUI

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
    // Primary - 열쇠/금속 느낌
    static let keyGold = Color(red: 1.0, green: 0.84, blue: 0.0)
    static let keySilver = Color(red: 0.75, green: 0.75, blue: 0.75)
    static let keyBronze = Color(red: 0.8, green: 0.5, blue: 0.2)

    // Secondary - 상자/나무 느낌
    static let boxWood = Color(red: 0.55, green: 0.27, blue: 0.07)
    static let boxDark = Color(red: 0.36, green: 0.23, blue: 0.1)

    // Accent - 보물/마법 느낌
    static let treasureGlow = Color(red: 0.61, green: 0.35, blue: 0.71)
    static let magicSparkle = Color(red: 0.95, green: 0.61, blue: 0.07)

    // Background
    static let forgeBackground = Color(red: 0.1, green: 0.1, blue: 0.18)
    static let oceanBackground = Color(red: 0.12, green: 0.23, blue: 0.37)
    static let warehouseBackground = Color(red: 0.18, green: 0.18, blue: 0.18)
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

    init(id: UUID = UUID(), title: String, description: String = "", category: BoxCategory, imageName: String? = nil, teeth: [Tooth] = [], status: BoxStatus = .inOcean, createdAt: Date = Date(), completedAt: Date? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.category = category
        self.imageName = imageName
        self.teeth = teeth
        self.status = status
        self.createdAt = createdAt
        self.completedAt = completedAt
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
    let box: TreasureBox
    let completedAt: Date
    var photos: [String]
    var memo: String
    var rating: Int

    init(id: UUID = UUID(), box: TreasureBox, completedAt: Date = Date(), photos: [String] = [], memo: String = "", rating: Int = 5) {
        self.id = id
        self.box = box
        self.completedAt = completedAt
        self.photos = photos
        self.memo = memo
        self.rating = rating
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

        // 버킷에 담긴 상태 -> 꿈의 바다 (inOcean)
        var myBoxes = viewModel.myBucketLists.map { item in
            convertToTreasureBox(item, status: .inOcean)
        }

        // 내 버킷이 비어있으면 랜덤 추천 상자 추가
        if myBoxes.isEmpty {
            let randomBoxes = generateRandomRecommendedBoxes()
            myBoxes.append(contentsOf: randomBoxes)
        }
        oceanBoxes = myBoxes

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
                rating: 5
            )
        }
    }

    // 랜덤 추천 상자 생성 (비어있을 때)
    private func generateRandomRecommendedBoxes() -> [TreasureBox] {
        // 테스트 모드: 항상 최소 1개, 랜덤으로 0~5개 추가
        #if DEBUG
        let count = max(1, Int.random(in: 0...5))
        #else
        // 릴리즈: 0~5개 (0개일 수도 있음)
        let count = Int.random(in: 0...5)
        #endif

        let allRecommendations = getRecommendedBuckets()
        let shuffled = allRecommendations.shuffled()
        let selected = Array(shuffled.prefix(count))

        return selected.map { recommendation in
            TreasureBox(
                title: recommendation.title,
                description: recommendation.description,
                category: recommendation.category,
                imageName: recommendation.imageName,
                teeth: recommendation.teeth,
                status: .inOcean
            )
        }
    }

    // 추천 버킷 목록
    private func getRecommendedBuckets() -> [(title: String, description: String, category: BoxCategory, imageName: String?, teeth: [Tooth])] {
        return [
            (
                title: "아이슬란드에서 오로라 보기",
                description: "북극의 신비로운 오로라를 직접 눈으로 보고 싶어요",
                category: .travel,
                imageName: "iceland_aurora",
                teeth: [
                    Tooth(title: "여행 경비 300만원 모으기", category: .money),
                    Tooth(title: "7일 휴가 확보하기", category: .time),
                    Tooth(title: "방한복 준비하기", category: .resource),
                    Tooth(title: "오로라 촬영법 배우기", category: .skill)
                ]
            ),
            (
                title: "풀코스 마라톤 완주",
                description: "42.195km를 끝까지 달려보고 싶어요",
                category: .challenge,
                imageName: nil,
                teeth: [
                    Tooth(title: "10km 러닝 가능해지기", category: .health),
                    Tooth(title: "하프 마라톤 완주", category: .health),
                    Tooth(title: "러닝화 & 장비 구매", category: .resource),
                    Tooth(title: "대회 등록하기", category: .permission)
                ]
            ),
            (
                title: "일본어 JLPT N2 취득",
                description: "일본어로 자유롭게 대화하고 싶어요",
                category: .learning,
                imageName: nil,
                teeth: [
                    Tooth(title: "히라가나/가타카나 마스터", category: .skill),
                    Tooth(title: "N3 수준 달성", category: .skill),
                    Tooth(title: "학원비 마련", category: .money),
                    Tooth(title: "시험 접수", category: .permission)
                ]
            ),
            (
                title: "스쿠버 다이빙 자격증 따기",
                description: "바다 속 세상을 탐험하고 싶어요",
                category: .challenge,
                imageName: nil,
                teeth: [
                    Tooth(title: "수영 실력 향상", category: .skill),
                    Tooth(title: "다이빙 교육비 준비", category: .money),
                    Tooth(title: "다이빙샵 예약", category: .permission),
                    Tooth(title: "장비 대여/구매", category: .resource)
                ]
            ),
            (
                title: "산티아고 순례길 걷기",
                description: "800km를 걸으며 나를 찾는 여행",
                category: .travel,
                imageName: nil,
                teeth: [
                    Tooth(title: "한 달 휴가 확보", category: .time),
                    Tooth(title: "여행 경비 500만원", category: .money),
                    Tooth(title: "트레킹 장비 준비", category: .resource),
                    Tooth(title: "체력 훈련", category: .health)
                ]
            ),
            (
                title: "나만의 앱 출시하기",
                description: "앱스토어에 내 앱을 올리고 싶어요",
                category: .career,
                imageName: nil,
                teeth: [
                    Tooth(title: "프로그래밍 기초 배우기", category: .skill),
                    Tooth(title: "앱 아이디어 구체화", category: .skill),
                    Tooth(title: "개발자 계정 등록", category: .permission),
                    Tooth(title: "개발 시간 확보", category: .time)
                ]
            ),
            (
                title: "제주도 한 달 살기",
                description: "제주에서 힐링하며 한 달 보내기",
                category: .lifestyle,
                imageName: nil,
                teeth: [
                    Tooth(title: "숙소 예약", category: .resource),
                    Tooth(title: "한 달 생활비 확보", category: .money),
                    Tooth(title: "재택근무 승인", category: .permission)
                ]
            ),
            (
                title: "악기 하나 마스터하기",
                description: "피아노나 기타를 자유롭게 연주하고 싶어요",
                category: .learning,
                imageName: nil,
                teeth: [
                    Tooth(title: "악기 구매/대여", category: .resource),
                    Tooth(title: "기초 레슨 등록", category: .money),
                    Tooth(title: "매일 30분 연습", category: .time),
                    Tooth(title: "한 곡 완성하기", category: .skill)
                ]
            ),
            (
                title: "부모님과 해외여행",
                description: "부모님께 해외여행을 선물하고 싶어요",
                category: .relationship,
                imageName: nil,
                teeth: [
                    Tooth(title: "여행 경비 마련", category: .money),
                    Tooth(title: "부모님 일정 확인", category: .time),
                    Tooth(title: "여행지 선정", category: .skill),
                    Tooth(title: "항공/숙소 예약", category: .resource)
                ]
            ),
            (
                title: "10kg 감량하기",
                description: "건강한 몸을 만들고 싶어요",
                category: .lifestyle,
                imageName: nil,
                teeth: [
                    Tooth(title: "운동 루틴 만들기", category: .skill),
                    Tooth(title: "식단 관리 시작", category: .health),
                    Tooth(title: "헬스장 등록", category: .resource),
                    Tooth(title: "주 3회 운동 습관화", category: .time)
                ]
            )
        ]
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
            completedAt: item.dateCompleted
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
                location: nil,
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
                    Label("대장간", systemImage: "hammer.fill")
                }
                .tag(0)

            TreasureOceanView()
                .tabItem {
                    Label("꿈의 바다", systemImage: "water.waves")
                }
                .tag(1)

            TreasureTreasureView()
                .tabItem {
                    Label("보물창고", systemImage: "sparkles")
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

// fullScreenCover용 대장간 (닫기 버튼 포함)
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
                            NavigationLink(destination: ForgeView(box: box)) {
                                WarehouseBoxCard(box: box)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("대장간")
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

// MARK: - Large Key View (대장간용 - 가로 방향)

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
        isCompleted ? Color.forgeBackground.opacity(0.3) : Color.white.opacity(0.05)
    }

    var body: some View {
        GeometryReader { geo in
            switch category {
            case .money:
                // 예산: 대각선 줄무늬
                DiagonalStripes(color: patternColor, lineWidth: 2, spacing: 6)

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
    @State private var showDetail = false

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(viewModel.oceanBoxes) { box in
                        OceanBoxCard(box: box)
                            .onTapGesture {
                                selectedBox = box
                                showDetail = true
                            }
                    }
                }
                .padding()
            }
            .background(
                ZStack {
                    LinearGradient(
                        colors: [.oceanBackground, Color(red: 0.05, green: 0.15, blue: 0.3)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    WaveBackground()
                }
                .ignoresSafeArea()
            )
            .navigationTitle("꿈의 바다")
            .navigationBarTitleDisplayMode(.large)
            .sheet(isPresented: $showDetail) {
                if let box = selectedBox {
                    OceanBoxDetailSheet(box: box)
                        .environmentObject(viewModel)
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

struct OceanBoxCard: View {
    let box: TreasureBox
    @State private var floating = false

    var body: some View {
        VStack(spacing: 12) {
            // 상자 아이콘
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
            .offset(y: floating ? -5 : 5)
            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: floating)

            VStack(spacing: 4) {
                Text(box.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)

                HStack(spacing: 4) {
                    Image(systemName: box.category.icon)
                        .font(.caption2)
                    Text(box.category.rawValue)
                        .font(.caption2)
                }
                .foregroundColor(.white.opacity(0.7))

                // 필요한 톱니 개수
                HStack(spacing: 2) {
                    Image(systemName: "key.fill")
                        .font(.caption2)
                    Text("\(box.teeth.count)개 필요")
                        .font(.caption2)
                }
                .foregroundColor(.keyGold.opacity(0.8))
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white.opacity(0.2), lineWidth: 1)
                )
        )
        .onAppear {
            floating = true
        }
    }
}

struct OceanBoxDetailSheet: View {
    let box: TreasureBox
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                Color.oceanBackground.ignoresSafeArea()

                ScrollView {
                    VStack(spacing: 24) {
                        // 상자 아이콘
                        ZStack {
                            Circle()
                                .fill(Color.boxWood.opacity(0.3))
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
                                .foregroundColor(.white)

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
                                .foregroundColor(.white.opacity(0.8))
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
                                        .foregroundColor(.white)

                                    Spacer()
                                }
                                .padding()
                                .background(Color.white.opacity(0.1))
                                .cornerRadius(10)
                            }
                        }
                        .padding()
                        .background(Color.black.opacity(0.2))
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
                            .foregroundColor(.forgeBackground)
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

// MARK: - Warehouse View (대장간)

struct TreasureWarehouseView: View {
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @State private var selectedBox: TreasureBox?
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
                            NavigationLink(destination: ForgeView(box: box)) {
                                WarehouseBoxCard(box: box)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("대장간")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitleColor(.white)
            .background(Color.warehouseBackground.ignoresSafeArea())
            .toolbar {
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

struct WarehouseBoxCard: View {
    let box: TreasureBox

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // 상단: 상자 정보
            HStack(spacing: 16) {
                // 상자 아이콘
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(
                                colors: [.boxWood, .boxDark],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 56, height: 48)

                    Image(systemName: box.isKeyComplete ? "lock.open.fill" : "lock.fill")
                        .font(.system(size: 20))
                        .foregroundColor(box.isKeyComplete ? .green : .keyGold)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text(box.title)
                        .font(.headline)
                        .foregroundColor(.white)

                    HStack {
                        Image(systemName: box.category.icon)
                        Text(box.category.rawValue)
                    }
                    .font(.caption)
                    .foregroundColor(box.category.color)
                }

                Spacer()

                // 진행률
                VStack {
                    Text("\(Int(box.progress * 100))%")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.keyGold)

                    Text(box.isKeyComplete ? "완성!" : "제작중")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
            }

            // 열쇠 진행 시각화
            KeyProgressView(teeth: box.teeth, showLabels: false, size: .large)

            // 마지막 작업
            HStack {
                Image(systemName: "clock")
                    .font(.caption)
                Text("마지막 작업: 오늘")
                    .font(.caption)
            }
            .foregroundColor(.gray)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.black.opacity(0.3))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(box.isKeyComplete ? Color.keyGold.opacity(0.5) : Color.gray.opacity(0.3), lineWidth: 1)
                )
        )
    }
}

// MARK: - Forge View (대장간)

struct ForgeView: View {
    let box: TreasureBox
    @EnvironmentObject var viewModel: TreasureBoxViewModel
    @EnvironmentObject var bucketListViewModel: BucketListViewModel
    @State private var showUnlocking = false
    @State private var isKeyExpanded = false
    @Environment(\.dismiss) var dismiss

    var currentBox: TreasureBox {
        viewModel.warehouseBoxes.first(where: { $0.id == box.id }) ?? box
    }

    var bucketItem: BucketListItem? {
        bucketListViewModel.bucketItems.first(where: { $0.id == box.id })
    }

    var body: some View {
        ZStack {
            // 대장간 배경
            LinearGradient(
                colors: [.forgeBackground, Color(red: 0.15, green: 0.1, blue: 0.1)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 24) {
                    // 상자 정보
                    VStack(spacing: 8) {
                        Text(currentBox.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        HStack {
                            Image(systemName: currentBox.category.icon)
                            Text(currentBox.category.rawValue)
                        }
                        .foregroundColor(currentBox.category.color)
                    }
                    .padding(.top)

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

                    // 열쇠 섹션 (접기/펼치기)
                    VStack(spacing: 0) {
                        // 헤더 버튼
                        Button(action: {
                            withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                isKeyExpanded.toggle()
                            }
                        }) {
                            HStack {
                                Image(systemName: "key.fill")
                                    .foregroundColor(.keyGold)
                                Text("열쇠 보기")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                                Image(systemName: isKeyExpanded ? "chevron.up" : "chevron.down")
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.black.opacity(0.3))
                            .cornerRadius(isKeyExpanded ? 16 : 16)
                        }

                        // 열쇠 뷰 (펼쳤을 때만 표시)
                        if isKeyExpanded {
                            VStack(spacing: 16) {
                                // 열쇠 시각화
                                LargeKeyView(teeth: currentBox.teeth, progress: currentBox.progress)
                                    .padding(.vertical, 20)

                                // 불 효과 (열쇠 바로 아래)
                                ForgeFireEffect()
                                    .frame(height: 60)
                                    .opacity(0.7)
                            }
                            .padding(.bottom, 16)
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(16)
                            .transition(.opacity.combined(with: .scale(scale: 0.95)))
                        }
                    }
                    .padding(.horizontal)

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
        .navigationTitle("대장간")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarBackground(Color.forgeBackground, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .fullScreenCover(isPresented: $showUnlocking) {
            UnlockingView(box: currentBox) {
                viewModel.openBox(currentBox)
                dismiss()
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
                        .foregroundColor(.white)

                    Text("\(completedCount)/\(box.teeth.count) 완료")
                        .font(.caption)
                        .foregroundColor(.gray)
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
        .background(Color.black.opacity(0.3))
        .cornerRadius(16)
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
            print("Failed to save image: \(error)")
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
                .foregroundColor(.white)

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
                                    .fill(Color.white.opacity(0.1))
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
                        .foregroundColor(.white.opacity(0.9))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white.opacity(0.05))
                        .cornerRadius(12)

                    // 답변 입력 필드
                    if showAnswerField {
                        VStack(alignment: .leading, spacing: 12) {
                            TextField("내 답변...", text: $userAnswer, axis: .vertical)
                                .textFieldStyle(.plain)
                                .padding()
                                .background(Color.white.opacity(0.1))
                                .cornerRadius(10)
                                .foregroundColor(.white)
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
                                .onChange(of: selectedPhoto) { newItem in
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
                                .foregroundColor(.forgeBackground)
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
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 14)
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(12)
                        }
                    }
                }
            } else {
                // 체크리스트 없으면 바로 완료 버튼
                if let desc = milestone?.description, !desc.isEmpty {
                    Text(desc)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                Button(action: onSkipToComplete) {
                    HStack {
                        Image(systemName: "checkmark")
                        Text("완료했어요!")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.forgeBackground)
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
                .fill(Color.white.opacity(0.05))
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
                .foregroundColor(.white)

            Text("이제 상자를 열 수 있어요")
                .font(.subheadline)
                .foregroundColor(.gray)
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
            .background(Color.forgeBackground.ignoresSafeArea())
            .navigationTitle("전체 단계")
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
                    .foregroundColor(.white)

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
        .background(Color.black.opacity(0.3))
        .cornerRadius(16)
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
                        .fill(tooth.isCompleted ? Color.green : (isCurrentStep ? Color.keyGold : Color.gray.opacity(0.3)))
                        .frame(width: 32, height: 32)

                    if tooth.isCompleted {
                        Image(systemName: "checkmark")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                    } else {
                        Text("\(stepNumber)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(isCurrentStep ? .forgeBackground : .white)
                    }
                }

                // 내용
                VStack(alignment: .leading, spacing: 4) {
                    Text(tooth.title)
                        .font(.body)
                        .foregroundColor(tooth.isCompleted ? .gray : .white)
                        .strikethrough(tooth.isCompleted)

                    if let milestone = milestone, !milestone.description.isEmpty {
                        Text(milestone.description)
                            .font(.caption)
                            .foregroundColor(.gray)
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
                            .foregroundColor(.gray)
                            .padding(8)
                    }
                }

                // 토글 버튼
                Button(action: onToggle) {
                    Image(systemName: tooth.isCompleted ? "arrow.uturn.backward" : "checkmark")
                        .font(.caption)
                        .foregroundColor(tooth.isCompleted ? .gray : .keyGold)
                        .padding(8)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(isCurrentStep ? Color.keyGold.opacity(0.1) : Color.white.opacity(0.05))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(isCurrentStep ? Color.keyGold.opacity(0.3) : Color.clear, lineWidth: 1)
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
                                .foregroundColor(.white.opacity(0.7))
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white.opacity(0.03))
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
                var answerLine = lines[1]
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
                    .foregroundColor(.white)

                Spacer()

                if !records.isEmpty {
                    Text("\(records.count)개")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }

            if records.isEmpty {
                // 기록 없을 때
                VStack(spacing: 8) {
                    Image(systemName: "pencil.and.list.clipboard")
                        .font(.system(size: 24))
                        .foregroundColor(.gray.opacity(0.5))

                    Text("아직 기록이 없어요")
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Text("질문에 답하면 여기에 저장돼요")
                        .font(.caption)
                        .foregroundColor(.gray.opacity(0.7))
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
        .background(Color.black.opacity(0.3))
        .cornerRadius(16)
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

    private let treasureBackground = Color(red: 0.15, green: 0.1, blue: 0.05)

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
                            .foregroundColor(.gray)

                        Text("열쇠를 완성하고 상자를 열어보세요!")
                            .font(.subheadline)
                            .foregroundColor(.gray.opacity(0.7))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 100)
                } else {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.completedBoxes) { completed in
                            TreasureCard(completedBox: completed)
                        }
                    }
                    .padding()
                }
            }
            .background(
                LinearGradient(
                    colors: [
                        Color(red: 0.2, green: 0.15, blue: 0.1),
                        treasureBackground
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
            )
            .navigationTitle("보물창고")
            .navigationBarTitleDisplayMode(.large)
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
                        .foregroundColor(.white)

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
            .foregroundColor(.gray)

            // 메모
            if !completedBox.memo.isEmpty {
                Text("\"\(completedBox.memo)\"")
                    .font(.body)
                    .italic()
                    .foregroundColor(.white.opacity(0.8))
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white.opacity(0.05))
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.black.opacity(0.3))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.keyGold.opacity(0.3), lineWidth: 1)
                )
        )
    }
}

// MARK: - Preview

#Preview {
    TreasureKeyMainView()
}
