import SwiftUI
import MapKit
import PhotosUI
import OSLog

// MARK: - Sky Lantern Animation View
struct SkyLanternView: View {
    let onDismiss: () -> Void
    @State private var lanterns: [Lantern] = []
    @State private var showMessage = false
    @State private var messageOpacity = 0.0

    struct Lantern: Identifiable {
        let id = UUID()
        var x: CGFloat
        var y: CGFloat
        var scale: CGFloat
        var opacity: Double
        var delay: Double
    }

    var body: some View {
        ZStack {
            // Dark gradient background (night sky)
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.05, green: 0.05, blue: 0.15),
                    Color(red: 0.1, green: 0.1, blue: 0.25),
                    Color(red: 0.15, green: 0.1, blue: 0.3)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            // Stars
            ForEach(0..<50, id: \.self) { i in
                Circle()
                    .fill(Color.white.opacity(Double.random(in: 0.3...0.8)))
                    .frame(width: CGFloat.random(in: 1...3))
                    .position(
                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height * 0.6)
                    )
            }

            // Lanterns
            ForEach(lanterns) { lantern in
                LanternShape()
                    .position(x: lantern.x, y: lantern.y)
                    .scaleEffect(lantern.scale)
                    .opacity(lantern.opacity)
            }

            // Celebration message
            VStack(spacing: 20) {
                if showMessage {
                    Text("🎊")
                        .font(.system(size: 60))

                    Text("꿈을 이루셨군요!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)

                    Text("당신의 꿈이 밤하늘의 풍등처럼\n아름답게 빛나고 있어요")
                        .font(.title3)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)

                    Button(action: onDismiss) {
                        Text("계속하기")
                            .font(.headline)
                            .foregroundColor(.orange)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 15)
                            .background(Color.white)
                            .cornerRadius(25)
                    }
                    .padding(.top, 30)
                }
            }
            .opacity(messageOpacity)
        }
        .onAppear {
            startLanternAnimation()
        }
    }

    func startLanternAnimation() {
        // Create multiple lanterns
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height

        for i in 0..<8 {
            let lantern = Lantern(
                x: CGFloat.random(in: screenWidth * 0.2...screenWidth * 0.8),
                y: screenHeight + 100,
                scale: CGFloat.random(in: 0.6...1.0),
                opacity: 0,
                delay: Double(i) * 0.3
            )
            lanterns.append(lantern)
        }

        // Animate each lantern
        for i in lanterns.indices {
            let delay = lanterns[i].delay

            DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                withAnimation(.easeOut(duration: 0.5)) {
                    lanterns[i].opacity = 1
                }

                withAnimation(.easeInOut(duration: 4).delay(0)) {
                    lanterns[i].y = -100
                    lanterns[i].x += CGFloat.random(in: -50...50)
                }

                withAnimation(.easeIn(duration: 1).delay(3)) {
                    lanterns[i].opacity = 0
                }
            }
        }

        // Show message after lanterns start
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            showMessage = true
            withAnimation(.easeIn(duration: 0.8)) {
                messageOpacity = 1
            }
        }
    }
}

// MARK: - Lantern Shape
struct LanternShape: View {
    @State private var glowOpacity = 0.5

    var body: some View {
        ZStack {
            // Glow effect
            Ellipse()
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [
                            Color.orange.opacity(0.8),
                            Color.orange.opacity(0.3),
                            Color.clear
                        ]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 40
                    )
                )
                .frame(width: 80, height: 80)
                .opacity(glowOpacity)

            // Lantern body
            VStack(spacing: 0) {
                // Top cap
                Capsule()
                    .fill(Color.orange.opacity(0.9))
                    .frame(width: 15, height: 8)

                // Main body
                Ellipse()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [
                                Color.orange,
                                Color.red.opacity(0.8)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 40, height: 50)
                    .overlay(
                        Ellipse()
                            .fill(Color.yellow.opacity(0.5))
                            .frame(width: 20, height: 25)
                            .offset(y: -5)
                    )
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true)) {
                glowOpacity = 0.9
            }
        }
    }
}

// MARK: - Flower Bloom Progress View
struct FlowerBloomView: View {
    let progress: Double // 0.0 ~ 1.0

    var bloomStage: Int {
        switch progress {
        case 0..<0.2: return 0  // Seed
        case 0.2..<0.4: return 1  // Sprout
        case 0.4..<0.6: return 2  // Stem with leaves
        case 0.6..<0.8: return 3  // Bud
        case 0.8..<1.0: return 4  // Blooming
        default: return 5  // Full bloom
        }
    }

    var stageDescription: String {
        switch bloomStage {
        case 0: return "씨앗을 심었어요"
        case 1: return "새싹이 돋았어요"
        case 2: return "줄기가 자라고 있어요"
        case 3: return "꽃봉오리가 맺혔어요"
        case 4: return "곧 활짝 필 거예요"
        default: return "꿈이 활짝 피었어요!"
        }
    }

    var stageIcon: String {
        switch bloomStage {
        case 0: return "leaf.circle"
        case 1: return "leaf.arrow.triangle.circlepath"
        case 2: return "leaf"
        case 3: return "camera.macro"
        case 4: return "sparkle"
        default: return "sparkles"
        }
    }

    var stageColor: Color {
        switch bloomStage {
        case 0: return .brown
        case 1: return .green.opacity(0.6)
        case 2: return .green
        case 3: return .pink.opacity(0.6)
        case 4: return .pink
        default: return .pink
        }
    }

    var body: some View {
        VStack(spacing: 8) {
            // Flower animation
            ZStack {
                Circle()
                    .fill(stageColor.opacity(0.15))
                    .frame(width: 60, height: 60)

                Image(systemName: stageIcon)
                    .font(.system(size: 28))
                    .foregroundColor(stageColor)
                    .scaleEffect(bloomStage == 5 ? 1.2 : 1.0)
                    .animation(.spring(response: 0.5), value: bloomStage)
            }

            Text(stageDescription)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(stageColor)
        }
    }
}

// MARK: - Dreamy Question Cards
struct DreamyQuestionCard: View {
    let question: String
    let placeholder: String
    @Binding var answer: String
    let icon: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.title3)
                    .foregroundColor(.purple.opacity(0.8))

                Text(question)
                    .font(.headline)
                    .foregroundColor(.primary)
            }

            TextField(placeholder, text: $answer)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.purple.opacity(0.05))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.purple.opacity(0.2), lineWidth: 1)
                        )
                )
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemBackground))
                .shadow(color: .purple.opacity(0.1), radius: 10, x: 0, y: 5)
        )
    }
}

// MARK: - Bucket Fill View
struct BucketFillView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var showingAddSheet = false
    @State private var showingSettings = false
    @State private var showingBrowser = false
    @State private var showingRecommendations = false
    @State private var selectedCategory: BucketCategory?
    @State private var showingSuccessAlert = false
    @State private var addedBucketTitle = ""

    var body: some View {
        NavigationView {
            MyBucketListView(showingAddSheet: $showingAddSheet)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.05), Color.purple.opacity(0.05)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationTitle("꿈 키우기")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button(action: { showingRecommendations = true }) {
                            Image(systemName: "sparkles")
                                .font(.title3)
                        }

                        Button(action: { showingBrowser = true }) {
                            Image(systemName: "list.bullet.rectangle")
                                .font(.title3)
                        }

                        Button(action: { showingSettings = true }) {
                            Image(systemName: "gearshape.fill")
                                .font(.title3)
                        }
                    }
                }
            }
            .sheet(isPresented: $showingAddSheet) {
                AddBucketSheet(selectedCategory: selectedCategory)
            }
            .sheet(isPresented: $showingSettings) {
                SettingsView()
            }
            .sheet(isPresented: $showingBrowser) {
                AllBucketBrowserView()
            }
            .fullScreenCover(isPresented: $showingRecommendations) {
                RecommendationsSheetView()
            }
            .alert("담기 완료!", isPresented: $showingSuccessAlert) {
                Button("확인", role: .cancel) { }
            } message: {
                Text("'\(addedBucketTitle)'\n내 버킷리스트에 담겼습니다!")
            }
        }
    }
}

// MARK: - Recommendations View
struct RecommendationsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Binding var showingAddSheet: Bool
    @Binding var selectedCategory: BucketCategory?
    @Binding var selectedTab: Int
    @Binding var showingSuccessAlert: Bool
    @Binding var addedBucketTitle: String
    @State private var randomBuckets: [(title: String, category: BucketCategory, thumbnail: String, backgroundImage: String, location: LocationInfo?)] = []

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("오늘, 어떤 꿈을 꾸고 싶으세요?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)

                    TabView {
                        ForEach(randomBuckets.indices, id: \.self) { index in
                            PopularBucketCard(
                                title: randomBuckets[index].title,
                                category: randomBuckets[index].category,
                                thumbnail: randomBuckets[index].thumbnail,
                                backgroundImage: randomBuckets[index].backgroundImage
                            ) {
                                selectedCategory = randomBuckets[index].category
                                viewModel.addBucketItem(
                                    title: randomBuckets[index].title,
                                    category: randomBuckets[index].category,
                                    thumbnail: randomBuckets[index].thumbnail,
                                    backgroundImage: randomBuckets[index].backgroundImage,
                                    location: randomBuckets[index].location
                                )
                                addedBucketTitle = randomBuckets[index].title
                                showingSuccessAlert = true

                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                                    withAnimation {
                                        selectedTab = 1
                                    }
                                }
                            }
                        }
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .frame(height: 300)
                    .indexViewStyle(.page(backgroundDisplayMode: .always))
                }

                VStack(spacing: 12) {
                    Text("당신만의 특별한 꿈이 있나요?")
                        .font(.headline)
                        .foregroundColor(.secondary)

                    Button(action: { showingAddSheet = true }) {
                        HStack {
                            Image(systemName: "sparkles")
                            Text("나만의 꿈 담기")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.purple, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(12)
                    }
                }
                .padding(.vertical, 40)
            }
            .padding(.vertical)
        }
        .onAppear {
            if randomBuckets.isEmpty {
                randomBuckets = viewModel.getRandomPopularBuckets(count: 5)
            }
        }
    }
}

// MARK: - Recommendations Sheet View (App Store Today Style Feed)
struct RecommendationsSheetView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @State private var loadedBuckets: [BucketItem] = []
    @State private var showingSuccessAlert = false
    @State private var addedBucketTitle = ""
    @State private var isLoading = false
    @State private var allBucketsShuffled: [BucketItem] = []
    @State private var currentLoadIndex = 0
    @State private var selectedBucket: BucketItem?
    @State private var showDetailView = false
    @Namespace private var animation
    private let batchSize = 5
    private let prefetchThreshold = 4

    private var todayDateString: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        formatter.dateFormat = "M월 d일 EEEE"
        return formatter.string(from: Date())
    }

    var body: some View {
        ZStack {
            // Background
            Color(.systemGroupedBackground)
                .ignoresSafeArea()

            VStack(spacing: 0) {
                // Header - App Store Today Style
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(todayDateString)
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                            .textCase(.uppercase)

                        Text("추천")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }

                    Spacer()

                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.top, 16)
                .padding(.bottom, 12)
                .background(Color(.systemBackground))
                .opacity(showDetailView ? 0 : 1)

                // Feed
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack(spacing: 24) {
                        ForEach(Array(loadedBuckets.enumerated()), id: \.element.title) { index, bucket in
                            RecommendationCard(
                                bucketItem: bucket,
                                namespace: animation,
                                isSource: selectedBucket?.title != bucket.title
                            ) {
                                withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                                    selectedBucket = bucket
                                    showDetailView = true
                                }
                            } onAdd: {
                                viewModel.addBucketItem(
                                    title: bucket.title,
                                    category: bucket.category,
                                    thumbnail: bucket.thumbnail,
                                    backgroundImage: bucket.backgroundImage,
                                    location: bucket.location
                                )
                                addedBucketTitle = bucket.title
                                showingSuccessAlert = true
                            }
                            .onAppear {
                                if index >= loadedBuckets.count - prefetchThreshold {
                                    loadMoreBuckets()
                                }
                            }
                        }

                        if isLoading {
                            ProgressView()
                                .padding(.vertical, 20)
                        }

                        Spacer()
                            .frame(height: 40)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                }
                .opacity(showDetailView ? 0 : 1)
            }

            // Detail View Overlay
            if showDetailView, let bucket = selectedBucket {
                BucketDetailPreviewView(
                    bucketItem: bucket,
                    namespace: animation,
                    isShowing: $showDetailView
                ) {
                    viewModel.addBucketItem(
                        title: bucket.title,
                        category: bucket.category,
                        thumbnail: bucket.thumbnail,
                        backgroundImage: bucket.backgroundImage,
                        location: bucket.location
                    )
                    addedBucketTitle = bucket.title
                    showingSuccessAlert = true
                }
            }
        }
        .alert("담기 완료!", isPresented: $showingSuccessAlert) {
            Button("확인", role: .cancel) { }
        } message: {
            Text("'\(addedBucketTitle)'\n내 버킷리스트에 담겼습니다!")
        }
        .onAppear {
            if loadedBuckets.isEmpty {
                initializeBuckets()
            }
        }
    }

    private func initializeBuckets() {
        allBucketsShuffled = viewModel.allBucketItems.shuffled()
        currentLoadIndex = 0
        loadMoreBuckets()
    }

    private func loadMoreBuckets() {
        guard !isLoading else { return }
        guard currentLoadIndex < allBucketsShuffled.count else { return }

        isLoading = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            let endIndex = min(currentLoadIndex + batchSize, allBucketsShuffled.count)
            let newBuckets = Array(allBucketsShuffled[currentLoadIndex..<endIndex])
            loadedBuckets.append(contentsOf: newBuckets)
            currentLoadIndex = endIndex
            isLoading = false
        }
    }
}

// MARK: - Recommendation Card (App Store Today Style)
struct RecommendationCard: View {
    let bucketItem: BucketItem
    var namespace: Namespace.ID
    var isSource: Bool = true
    let onTap: () -> Void
    let onAdd: () -> Void

    @State private var isAdded = false

    private var displayImage: String {
        if UIImage(named: bucketItem.backgroundImage) != nil {
            return bucketItem.backgroundImage
        } else {
            let hash = abs(bucketItem.title.hashValue)
            let imageNumber = (hash % 5) + 1
            return "default\(imageNumber)"
        }
    }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background Image
                Image(displayImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
                    .matchedGeometryEffect(id: "image_\(bucketItem.title)", in: namespace, isSource: isSource)

                // Gradient Overlay
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: .black.opacity(0.4), location: 0),
                        .init(color: .clear, location: 0.35),
                        .init(color: .clear, location: 0.55),
                        .init(color: .black.opacity(0.7), location: 1)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .matchedGeometryEffect(id: "gradient_\(bucketItem.title)", in: namespace, isSource: isSource)

                // Content Overlay
                VStack(alignment: .leading, spacing: 0) {
                    // Top: Category Tag
                    HStack {
                        Text(bucketItem.category.rawValue.uppercased())
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white.opacity(0.9))
                            .tracking(1.2)
                            .matchedGeometryEffect(id: "category_\(bucketItem.title)", in: namespace, isSource: isSource)

                        Spacer()

                        if isAdded {
                            HStack(spacing: 4) {
                                Image(systemName: "checkmark.circle.fill")
                                    .font(.caption)
                                Text("담김")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(Color.green.opacity(0.8))
                            .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)

                    Spacer()

                    // Bottom: Title & Subtitle
                    VStack(alignment: .leading, spacing: 8) {
                        Text(bucketItem.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                            .lineLimit(2)
                            .matchedGeometryEffect(id: "title_\(bucketItem.title)", in: namespace, isSource: isSource)

                        Text("탭해서 자세히 보기")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.85))
                            .shadow(color: .black.opacity(0.3), radius: 1, x: 0, y: 1)
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                }
            }
        }
        .frame(height: 420)
        .cornerRadius(20)
        .matchedGeometryEffect(id: "card_\(bucketItem.title)", in: namespace, isSource: isSource)
        .shadow(color: .black.opacity(0.15), radius: 12, x: 0, y: 5)
        .onTapGesture {
            onTap()
        }
    }
}

// MARK: - Bucket Detail Preview View (App Store Expansion Style)
struct BucketDetailPreviewView: View {
    let bucketItem: BucketItem
    var namespace: Namespace.ID
    @Binding var isShowing: Bool
    let onAdd: () -> Void

    @State private var isAdded = false
    @State private var scrollOffset: CGFloat = 0

    private var displayImage: String {
        if UIImage(named: bucketItem.backgroundImage) != nil {
            return bucketItem.backgroundImage
        } else {
            let hash = abs(bucketItem.title.hashValue)
            let imageNumber = (hash % 5) + 1
            return "default\(imageNumber)"
        }
    }

    var body: some View {
        ZStack(alignment: .top) {
            // Background
            Color(.systemBackground)
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    // Hero Image Section
                    GeometryReader { geometry in
                        let minY = geometry.frame(in: .global).minY
                        let height: CGFloat = max(450 - minY * 0.5, 300)

                        ZStack(alignment: .bottom) {
                            Image(displayImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width, height: height)
                                .clipped()
                                .matchedGeometryEffect(id: "image_\(bucketItem.title)", in: namespace, isSource: false)

                            LinearGradient(
                                gradient: Gradient(stops: [
                                    .init(color: .clear, location: 0.3),
                                    .init(color: .black.opacity(0.8), location: 1)
                                ]),
                                startPoint: .top,
                                endPoint: .bottom
                            )
                            .matchedGeometryEffect(id: "gradient_\(bucketItem.title)", in: namespace, isSource: false)

                            VStack(alignment: .leading, spacing: 12) {
                                Text(bucketItem.category.rawValue.uppercased())
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white.opacity(0.9))
                                    .tracking(1.2)
                                    .matchedGeometryEffect(id: "category_\(bucketItem.title)", in: namespace, isSource: false)

                                Text(bucketItem.title)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
                                    .matchedGeometryEffect(id: "title_\(bucketItem.title)", in: namespace, isSource: false)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(24)
                        }
                        .frame(height: height)
                    }
                    .frame(height: 450)
                    .matchedGeometryEffect(id: "card_\(bucketItem.title)", in: namespace, isSource: false)

                    // Content Section
                    VStack(alignment: .leading, spacing: 24) {
                        // Add to Bucket Button
                        Button(action: {
                            if !isAdded {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                    isAdded = true
                                }
                                onAdd()
                            }
                        }) {
                            HStack {
                                Image(systemName: isAdded ? "checkmark.circle.fill" : "plus.circle.fill")
                                    .font(.title3)
                                Text(isAdded ? "내 버킷리스트에 담김" : "내 버킷리스트에 담기")
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(isAdded ? Color.green : Color.blue)
                            .cornerRadius(14)
                        }
                        .disabled(isAdded)

                        // Milestones Section
                        if bucketItem.hasCustomMilestones && !bucketItem.milestones.isEmpty {
                            VStack(alignment: .leading, spacing: 16) {
                                HStack {
                                    Image(systemName: "flag.fill")
                                        .foregroundColor(.orange)
                                    Text("마일스톤")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }

                                Text("이 버킷리스트를 달성하기 위한 단계별 목표입니다")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)

                                ForEach(Array(bucketItem.milestones.enumerated()), id: \.element.id) { index, milestone in
                                    MilestonePreviewCard(milestone: milestone, index: index + 1)
                                }
                            }
                            .padding(.top, 8)
                        } else {
                            // Default description if no milestones
                            VStack(alignment: .leading, spacing: 16) {
                                HStack {
                                    Image(systemName: "sparkles")
                                        .foregroundColor(.purple)
                                    Text("이 꿈에 대해서")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }

                                Text("버킷리스트에 담으면 나만의 마일스톤을 설정하고 꿈을 향해 한 걸음씩 나아갈 수 있어요.")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                                    .lineSpacing(4)

                                HStack(spacing: 12) {
                                    InfoBadge(icon: "mountain.2.fill", text: "도전")
                                    InfoBadge(icon: bucketItem.category.icon, text: bucketItem.category.rawValue)
                                }
                            }
                            .padding(.top, 8)
                        }

                        Spacer()
                            .frame(height: 100)
                    }
                    .padding(20)
                    .background(Color(.systemBackground))
                }
            }

            // Close Button
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.8)) {
                        isShowing = false
                    }
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
                }
                .padding(.trailing, 20)
                .padding(.top, 60)
            }
        }
        .ignoresSafeArea()
    }
}

// MARK: - Milestone Preview Card
struct MilestonePreviewCard: View {
    let milestone: Milestone
    let index: Int

    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            // Step Number
            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.15))
                    .frame(width: 36, height: 36)

                Text("\(index)")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }

            VStack(alignment: .leading, spacing: 6) {
                Text(milestone.title)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text(milestone.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)

                if !milestone.successCriteria.isEmpty {
                    HStack(spacing: 4) {
                        Image(systemName: "checklist")
                            .font(.caption)
                        Text("\(milestone.successCriteria.count)개의 체크리스트")
                            .font(.caption)
                    }
                    .foregroundColor(.blue)
                    .padding(.top, 4)
                }
            }
        }
        .padding(16)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

// MARK: - Info Badge
struct InfoBadge: View {
    let icon: String
    let text: String

    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
                .font(.caption)
            Text(text)
                .font(.caption)
                .fontWeight(.medium)
        }
        .foregroundColor(.secondary)
        .padding(.horizontal, 12)
        .padding(.vertical, 8)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(8)
    }
}

// MARK: - My Bucket List View
struct MyBucketListView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Binding var showingAddSheet: Bool

    var allMyBuckets: [BucketListItem] {
        viewModel.myBucketLists + viewModel.climbingBucketLists
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                if allMyBuckets.isEmpty {
                    VStack(spacing: 24) {
                        Spacer()
                            .frame(height: 80)

                        Image(systemName: "heart.circle")
                            .font(.system(size: 70))
                            .foregroundColor(.purple.opacity(0.4))

                        VStack(spacing: 12) {
                            Text("아직 꿈이 시작되지 않았어요")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)

                            Text("가슴 뛰는 무언가를 떠올려보세요\n그것이 바로 당신의 첫 번째 꿈이 될 거예요")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)
                                .lineSpacing(4)
                        }

                        Button(action: { showingAddSheet = true }) {
                            HStack(spacing: 8) {
                                Image(systemName: "sparkles")
                                Text("첫 번째 꿈 담기")
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal, 28)
                            .padding(.vertical, 14)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.purple, Color.pink]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .cornerRadius(14)
                            .shadow(color: .purple.opacity(0.3), radius: 8, x: 0, y: 4)
                        }
                        .padding(.top, 12)

                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 24)
                } else {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("\(allMyBuckets.count)개의 꿈이 자라고 있어요")
                                    .font(.title3)
                                    .fontWeight(.bold)

                                Text("하나씩 꽃피워 나가볼까요?")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }

                            Spacer()

                            Button(action: { showingAddSheet = true }) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.purple)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 16)
                        .padding(.bottom, 12)

                        LazyVStack(spacing: 12) {
                            ForEach(allMyBuckets) { item in
                                NavigationLink(destination: BucketDetailView(item: item)) {
                                    MyBucketItemRow(item: item)
                                        .padding(16)
                                        .background(
                                            ZStack {
                                                // 배경 이미지
                                                if let bgImage = item.backgroundImage, !bgImage.isEmpty {
                                                    Image(bgImage)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .overlay(Color.black.opacity(0.3))
                                                }

                                                RoundedRectangle(cornerRadius: 16)
                                                    .fill(Color(.systemBackground).opacity(item.backgroundImage != nil ? 0.85 : 1.0))
                                            }
                                            .clipped()
                                        )
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                        .shadow(color: .black.opacity(0.06), radius: 8, x: 0, y: 2)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding(.horizontal, 16)

                        // 하단 여백
                        Spacer()
                            .frame(height: 24)
                    }
                }
            }
        }
    }
}

struct PopularBucketCard: View {
    let title: String
    let category: BucketCategory
    let thumbnail: String
    let backgroundImage: String
    let onAdd: () -> Void

    // 기본 이미지 선택 (제목 기반으로 일관된 이미지 선택)
    private var displayImage: String {
        // UIImage로 이미지 존재 확인
        if UIImage(named: backgroundImage) != nil {
            return backgroundImage
        } else {
            // 이미지가 없으면 제목의 해시값으로 default1~default5 중 하나를 일관되게 선택
            let hash = abs(title.hashValue)
            let imageNumber = (hash % 5) + 1
            return "default\(imageNumber)"
        }
    }

    var body: some View {
        ZStack {
            // 배경 이미지
            Image(displayImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()
                .cornerRadius(20)

            // 그라데이션 오버레이 (하단만 살짝)
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.4),
                    Color.clear
                ]),
                startPoint: .bottom,
                endPoint: .center
            )
            .cornerRadius(20)

            // 컨텐츠
            VStack(spacing: 15) {
                Spacer()

                Image(systemName: thumbnail)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                Text(category.rawValue)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.95))
                    .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)

                Button(action: onAdd) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("담기")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 10)
                    .background(category.color)
                    .cornerRadius(20)
                }
                .padding(.bottom, 30)
            }
            .padding()
        }
        .frame(height: 300)
        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
        .padding(.horizontal, 20)
    }
}

struct MyBucketItemRow: View {
    @ObservedObject var item: BucketListItem

    var statusText: String {
        if item.status == .completed {
            return "완료"
        } else if item.status == .climbing {
            return "진행중"
        } else {
            return "시작전"
        }
    }

    var statusColor: Color {
        if item.status == .completed {
            return .green
        } else if item.status == .climbing {
            return .blue
        } else {
            return .secondary
        }
    }

    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(2)

                Text(item.category.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text("\(Int(item.totalProgress))%")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(statusColor)

                Text(statusText)
                    .font(.caption)
                    .foregroundColor(statusColor)
            }
        }
    }
}

struct MyBucketItemRowContainer: View {
    @ObservedObject var item: BucketListItem

    var body: some View {
        MyBucketItemRow(item: item)
            .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
        )
        .padding(.horizontal)
    }
}


struct AddBucketSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss

    var selectedCategory: BucketCategory?

    @State private var title = ""
    @State private var category: BucketCategory = .travel
    @State private var location: LocationInfo?
    @State private var showingLocationSearch = false
    @State private var currentStep = 0
    @State private var dreamReason = ""
    @State private var dreamFeeling = ""

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    // Step indicator
                    HStack(spacing: 8) {
                        ForEach(0..<3) { step in
                            Circle()
                                .fill(step <= currentStep ? Color.purple : Color.gray.opacity(0.3))
                                .frame(width: 8, height: 8)
                        }
                    }
                    .padding(.top)

                    // Main content based on step
                    switch currentStep {
                    case 0:
                        dreamInputStep
                    case 1:
                        categoryStep
                    case 2:
                        feelingStep
                    default:
                        EmptyView()
                    }

                    Spacer()

                    // Navigation buttons
                    navigationButtons
                }
                .padding()
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.purple.opacity(0.05),
                        Color.pink.opacity(0.05)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationTitle(stepTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }
            }
            .onAppear {
                if let selected = selectedCategory {
                    category = selected
                }
            }
            .sheet(isPresented: $showingLocationSearch) {
                LocationSearchView { selectedLocation in
                    location = selectedLocation
                }
            }
        }
    }

    var stepTitle: String {
        switch currentStep {
        case 0: return "꿈을 담아볼까요?"
        case 1: return "어떤 종류의 꿈인가요?"
        case 2: return "이 꿈이 특별한 이유"
        default: return ""
        }
    }

    var dreamInputStep: some View {
        VStack(spacing: 24) {
            Image(systemName: "sparkles")
                .font(.system(size: 50))
                .foregroundColor(.purple.opacity(0.6))

            Text("어떤 꿈을 꾸고 계세요?")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            Text("언젠가 꼭 하고 싶은 것,\n상상만 해도 설레는 그것을 적어주세요")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            TextField("예: 오로라 아래서 프로포즈 하기", text: $title)
                .font(.body)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemBackground))
                        .shadow(color: .purple.opacity(0.1), radius: 5)
                )
                .padding(.top, 20)
        }
    }

    var categoryStep: some View {
        VStack(spacing: 24) {
            Image(systemName: category.icon)
                .font(.system(size: 50))
                .foregroundColor(category.color)

            Text("이 꿈은 어떤 모험인가요?")
                .font(.title2)
                .fontWeight(.bold)

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                ForEach(BucketCategory.allCases, id: \.self) { cat in
                    Button(action: { category = cat }) {
                        VStack(spacing: 8) {
                            Image(systemName: cat.icon)
                                .font(.title2)
                            Text(cat.rawValue)
                                .font(.subheadline)
                                .fontWeight(.medium)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(category == cat ? cat.color.opacity(0.2) : Color(.systemBackground))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(category == cat ? cat.color : Color.clear, lineWidth: 2)
                                )
                        )
                        .foregroundColor(category == cat ? cat.color : .primary)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }

            if category == .travel {
                Button(action: { showingLocationSearch = true }) {
                    HStack {
                        Image(systemName: location == nil ? "map" : "mappin.circle.fill")
                            .foregroundColor(location == nil ? .gray : .blue)
                        Text(location?.name ?? "장소 검색하기 (선택)")
                            .foregroundColor(location == nil ? .secondary : .primary)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color(.systemBackground))
                    .cornerRadius(12)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }

    var feelingStep: some View {
        VStack(spacing: 24) {
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(.pink.opacity(0.6))

            Text("이 꿈을 이루면\n어떤 기분일 것 같아요?")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)

            TextField("예: 평생 잊지 못할 순간이 될 것 같아요", text: $dreamFeeling)
                .font(.body)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemBackground))
                        .shadow(color: .pink.opacity(0.1), radius: 5)
                )

            Text("왜 이 꿈이 특별한가요?")
                .font(.headline)
                .padding(.top, 20)

            TextField("예: 사랑하는 사람과 함께 하고 싶어서", text: $dreamReason)
                .font(.body)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.systemBackground))
                        .shadow(color: .pink.opacity(0.1), radius: 5)
                )

            Text("💡 이 기록은 나중에 꿈을 향해 나아갈 때\n힘이 되어줄 거예요")
                .font(.caption)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.top, 8)
        }
    }

    var navigationButtons: some View {
        HStack(spacing: 16) {
            if currentStep > 0 {
                Button(action: {
                    withAnimation { currentStep -= 1 }
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("이전")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .foregroundColor(.primary)
                    .cornerRadius(12)
                }
            }

            Button(action: {
                if currentStep < 2 {
                    withAnimation { currentStep += 1 }
                } else {
                    saveDream()
                }
            }) {
                HStack {
                    Text(currentStep == 2 ? "꿈 심기" : "다음")
                    Image(systemName: currentStep == 2 ? "sparkles" : "chevron.right")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.purple, Color.pink]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .foregroundColor(.white)
                .cornerRadius(12)
            }
            .disabled(currentStep == 0 && title.isEmpty)
        }
    }

    func saveDream() {
        guard !title.isEmpty else { return }
        var notes = ""
        if !dreamFeeling.isEmpty {
            notes += "이 꿈을 이루면: \(dreamFeeling)\n"
        }
        if !dreamReason.isEmpty {
            notes += "특별한 이유: \(dreamReason)"
        }
        viewModel.addBucketItem(title: title, category: category, location: location, notes: notes)
        dismiss()
    }
}

// MARK: - Climbing View
struct ClimbingView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        NavigationView {
            ZStack {
                if viewModel.climbingBucketLists.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "mountain.2.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)

                        Text("등반을 시작해보세요")
                            .font(.title2)
                            .fontWeight(.bold)

                        VStack(spacing: 8) {
                            Text("버킷리스트에서 하나를 선택해")
                                .foregroundColor(.secondary)
                            Text("'등반 시작하기'를 눌러보세요")
                                .foregroundColor(.secondary)
                        }
                        .multilineTextAlignment(.center)

                        VStack(alignment: .leading, spacing: 12) {
                            HStack(spacing: 12) {
                                Image(systemName: "1.circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.title3)
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("장애물 분석")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                    Text("막고 있는 구체적인 장애물 파악")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }

                            HStack(spacing: 12) {
                                Image(systemName: "2.circle.fill")
                                    .foregroundColor(.green)
                                    .font(.title3)
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("마일스톤 설정")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                    Text("달성 가능한 중간 목표 생성")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }

                            HStack(spacing: 12) {
                                Image(systemName: "3.circle.fill")
                                    .foregroundColor(.orange)
                                    .font(.title3)
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("일일 진행 기록")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                    Text("작은 행동들로 산을 올라가세요")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.secondarySystemBackground))
                        )
                        .padding(.horizontal)
                    }
                    .padding()
                } else {
                    ScrollView {
                        VStack(spacing: 20) {
                            ForEach(viewModel.climbingBucketLists) { item in
                                NavigationLink(destination: BucketDetailView(item: item)) {
                                    ClimbingItemCard(item: item)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                                    Button(role: .destructive) {
                                        viewModel.deleteBucket(item: item)
                                    } label: {
                                        Label("삭제", systemImage: "trash")
                                    }

                                    Button {
                                        viewModel.completeBucket(item: item)
                                    } label: {
                                        Label("완료", systemImage: "checkmark")
                                    }
                                    .tint(.green)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("등반 중")
        }
    }
}

struct ClimbingItemCard: View {
    @ObservedObject var item: BucketListItem

    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(2)

                Text(item.category.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text("\(Int(item.totalProgress))%")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)

                Text("진행중")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding()
        .background(
            ZStack {
                // 배경 이미지
                if let bgImage = item.backgroundImage, !bgImage.isEmpty {
                    Image(bgImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.3))
                }

                RoundedRectangle(cornerRadius: 15)
                    .fill(Color(.systemBackground).opacity(item.backgroundImage != nil ? 0.85 : 1.0))
            }
            .clipped()
        )
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

struct MountainVisualization: View {
    let progress: Double
    let height: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                Image(systemName: "triangle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray.opacity(0.3))
                    .frame(width: geometry.size.width * 0.6)
                
                VStack {
                    Spacer()
                    Image(systemName: "triangle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue.opacity(0.7))
                        .frame(width: geometry.size.width * 0.6)
                        .frame(height: geometry.size.height * CGFloat(progress / 100))
                }
                
                VStack {
                    Spacer()
                        .frame(height: geometry.size.height * CGFloat((100 - progress) / 100))
                    
                    Image(systemName: "figure.hiking")
                        .font(.title)
                        .foregroundColor(.orange)
                        .padding(8)
                        .background(Circle().fill(Color.white))
                        .shadow(radius: 3)
                    
                    Spacer()
                }
                
                VStack {
                    Text("\(String(format: "%.1f", height))km")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(4)
                        .background(Color.blue)
                        .cornerRadius(4)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
            }
        }
    }
}

// MARK: - Archive View
struct ArchiveView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        NavigationView {
            ZStack {
                if viewModel.itemsCompleted.isEmpty {
                    VStack(spacing: 20) {
                        Image(systemName: "sparkles")
                            .font(.system(size: 80))
                            .foregroundColor(.purple.opacity(0.5))

                        Text("아직 피어난 꿈이 없어요")
                            .font(.title2)
                            .fontWeight(.bold)

                        Text("첫 번째 꿈이 활짝 피면\n이곳에 아름다운 기억이 남을 거예요")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                } else {
                    ScrollView {
                        VStack(spacing: 20) {
                            StatsCard(completedCount: viewModel.itemsCompleted.count)
                                .padding()

                            VStack(alignment: .leading, spacing: 15) {
                                Text("피어난 꿈들 🌸")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.horizontal)
                                
                                ForEach(viewModel.itemsCompleted.sorted(by: { $0.dateCompleted ?? Date() > $1.dateCompleted ?? Date() })) { item in
                                    NavigationLink(destination: BucketDetailView(item: item)) {
                                        CompletedItemCard(item: item)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                                        Button(role: .destructive) {
                                            viewModel.deleteBucket(item: item)
                                        } label: {
                                            Label("삭제", systemImage: "trash")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("피어난 꿈들")
        }
    }
}

struct StatsCard: View {
    let completedCount: Int

    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Image(systemName: "sparkles")
                    .font(.title)
                    .foregroundColor(.pink)

                VStack(alignment: .leading, spacing: 4) {
                    Text("활짝 핀 꿈")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    Text("\(completedCount)개의 꽃")
                        .font(.title)
                        .fontWeight(.bold)
                }

                Spacer()

                FlowerBloomView(progress: 1.0)
            }

            if completedCount > 0 {
                Text("당신은 이미 \(completedCount)개의 꿈을 피워냈어요!")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.pink.opacity(0.15), Color.purple.opacity(0.15)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.pink.opacity(0.3), lineWidth: 2)
        )
    }
}

struct CompletedItemCard: View {
    @ObservedObject var item: BucketListItem

    var formattedDate: String {
        guard let date = item.dateCompleted else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.M.d"
        return formatter.string(from: date)
    }

    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(2)

                Text(item.category.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 4) {
                Text("100%")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.green)

                Text("완료")
                    .font(.caption)
                    .foregroundColor(.green)
            }
        }
        .padding()
        .background(
            ZStack {
                // 배경 이미지
                if let bgImage = item.backgroundImage, !bgImage.isEmpty {
                    Image(bgImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.3))
                }

                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(.systemBackground).opacity(item.backgroundImage != nil ? 0.85 : 1.0))
            }
            .clipped()
        )
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
        .padding(.horizontal)
    }
}

// MARK: - Bucket Detail View
struct BucketDetailView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    @State private var showingProgressSheet = false
    @State private var showingCompleteAlert = false
    @State private var showingDeleteAlert = false
    @State private var showingEditTitleSheet = false
    @State private var showingAddObstacleSheet = false
    @State private var showingAddMilestoneSheet = false
    @State private var showingLanternAnimation = false
    @Environment(\.dismiss) var dismiss

    var hasMilestones: Bool {
        !item.milestones.isEmpty
    }

    var phase1Completed: Bool {
        item.milestonesPhaseCompleted
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                MountainHeaderView(item: item)
                    .padding()

                if item.status == .inBucket {
                    VStack(spacing: 12) {
                        Text("이 꿈을 키워볼 준비가 되셨나요?")
                            .font(.headline)
                            .foregroundColor(.secondary)

                        Button(action: {
                            viewModel.startClimbing(item: item)
                        }) {
                            HStack {
                                Image(systemName: "leaf.fill")
                                Text("꿈 키우기 시작")
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.green, Color.blue]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal)
                }

                if item.status == .climbing {
                    // 마일스톤 작성 (최우선)
                    if !phase1Completed {
                        VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 8) {
                                Image(systemName: "sparkle")
                                    .foregroundColor(.purple)
                                Text("이 꿈을 향한 첫 발걸음은?")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Text("꿈을 이루기 위한 설레는 단계들을 상상해보세요")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)

                        MilestonesSection(item: item)
                            .padding(.horizontal)

                        HStack(spacing: 12) {
                            Button(action: {
                                showingAddMilestoneSheet = true
                            }) {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                    Text(hasMilestones ? "설레는 순간 추가" : "첫 번째 순간 상상하기")
                                        .fontWeight(.semibold)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.purple, Color.blue]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .foregroundColor(.white)
                                .cornerRadius(12)
                            }

                            if hasMilestones {
                                Button(action: {
                                    viewModel.completeMilestonesPhase(item: item)
                                }) {
                                    HStack {
                                        Image(systemName: "checkmark.circle.fill")
                                        Text("준비 완료!")
                                            .fontWeight(.semibold)
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(12)
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }

                    // 마일스톤 달성하기 (마일스톤 작성 완료 후)
                    if phase1Completed {
                        Divider()
                            .padding(.vertical, 10)

                        VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 8) {
                                Image(systemName: "leaf.fill")
                                    .foregroundColor(.green)
                                Text("꿈을 향해 한 걸음씩")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Text("하나씩 이루어가는 순간들이 모여 꽃이 됩니다")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)

                        // 어려움 기록하기 버튼
                        Button(action: {
                            showingAddObstacleSheet = true
                        }) {
                            HStack(spacing: 10) {
                                Image(systemName: "cloud.fill")
                                    .foregroundColor(.gray)
                                Text("이 꿈 앞에 놓인 것들")
                                    .fontWeight(.semibold)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.gray.opacity(0.1))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                                    )
                            )
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.horizontal)

                        MilestonesSection(item: item)
                            .padding(.horizontal)

                        ObstaclesSection(item: item)
                            .padding(.horizontal)

                        DailyProgressSection(item: item)
                            .padding(.horizontal)

                        Button(action: {
                            showingProgressSheet = true
                        }) {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                Text("오늘 한 발걸음 기록하기")
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                        .padding(.horizontal)

                        Button(action: {
                            showingCompleteAlert = true
                        }) {
                            HStack {
                                Image(systemName: "sparkles")
                                Text("꿈이 피었어요!")
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.pink, Color.purple]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(12)
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }

                if item.status == .completed {
                    CompletionSummaryView(item: item)
                        .padding()
                }
            }
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Menu {
                    Button(action: { showingEditTitleSheet = true }) {
                        Label("제목 수정", systemImage: "pencil")
                    }

                    if item.status == .climbing {
                        if !phase1Completed {
                            Button(action: { showingAddMilestoneSheet = true }) {
                                Label("마일스톤 추가", systemImage: "plus.square")
                            }
                        }

                        if phase1Completed {
                            Button(action: { showingAddObstacleSheet = true }) {
                                Label("장애물 추가", systemImage: "plus.circle")
                            }
                        }
                    }

                    Divider()

                    Button(role: .destructive, action: { showingDeleteAlert = true }) {
                        Label("삭제", systemImage: "trash")
                    }
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
        .sheet(isPresented: $showingProgressSheet) {
            AddProgressSheet(item: item)
        }
        .sheet(isPresented: $showingEditTitleSheet) {
            EditTitleSheet(item: item)
        }
        .sheet(isPresented: $showingAddObstacleSheet) {
            AddObstacleSheet(item: item)
        }
        .sheet(isPresented: $showingAddMilestoneSheet) {
            AddMilestoneSheet(item: item)
        }
        .alert("꿈이 활짝 피었어요!", isPresented: $showingCompleteAlert) {
            Button("아직이에요", role: .cancel) { }
            Button("네, 피었어요!") {
                showingLanternAnimation = true
            }
        } message: {
            Text("정말 이 꿈을 이루셨나요?\n이 순간을 함께 축하해요!")
        }
        .alert("정말 삭제할까요?", isPresented: $showingDeleteAlert) {
            Button("취소", role: .cancel) { }
            Button("삭제", role: .destructive) {
                viewModel.deleteBucket(item: item)
                dismiss()
            }
        } message: {
            Text("이 꿈과 함께한 모든 기록이 사라져요.\n정말 괜찮으신가요?")
        }
        .fullScreenCover(isPresented: $showingLanternAnimation) {
            SkyLanternView {
                showingLanternAnimation = false
                viewModel.completeBucket(item: item)
                dismiss()
            }
        }
    }
}

// MARK: - 2D Bucket Header View
struct BucketHeaderView: View {
    @ObservedObject var item: BucketListItem
    @State private var isExpanded: Bool = false  // 기본값: 접힘

    var completedMilestones: Int {
        item.milestones.filter { $0.isCompleted }.count
    }

    var totalMilestones: Int {
        item.milestones.count
    }

    var milestoneProgress: Double {
        guard totalMilestones > 0 else { return 0 }
        return Double(completedMilestones) / Double(totalMilestones)
    }

    var motivationalMessage: String {
        let progress = milestoneProgress * 100
        if progress >= 100 {
            return "축하해요! 모든 마일스톤을 달성했어요!"
        } else if progress >= 80 {
            return "거의 다 왔어요! 조금만 더!"
        } else if progress >= 60 {
            return "절반 이상 완료! 대단해요!"
        } else if progress >= 40 {
            return "순조롭게 진행 중이에요!"
        } else if progress >= 20 {
            return "좋은 시작이에요!"
        } else if progress > 0 {
            return "첫 걸음을 뗐어요!"
        } else {
            return "마일스톤을 완료해보세요!"
        }
    }

    var body: some View {
        VStack(spacing: 0) {
            // 접힌 상태: 컴팩트 헤더
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    isExpanded.toggle()
                }
            }) {
                HStack(spacing: 12) {
                    // 썸네일 이미지 또는 아이콘
                    if let bgImage = item.backgroundImage, UIImage(named: bgImage) != nil {
                        Image(bgImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(item.category.color.opacity(0.3))
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: item.thumbnail)
                                    .font(.title2)
                                    .foregroundColor(item.category.color)
                            )
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 6) {
                            Image(systemName: item.thumbnail)
                                .font(.caption2)
                            Text(item.category.rawValue)
                                .font(.caption)
                                .fontWeight(.medium)
                        }
                        .foregroundColor(item.category.color)

                        if item.status == .climbing && totalMilestones > 0 {
                            // 진행률 바
                            GeometryReader { geometry in
                                ZStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: 3)
                                        .fill(Color.gray.opacity(0.2))
                                        .frame(height: 6)

                                    RoundedRectangle(cornerRadius: 3)
                                        .fill(
                                            LinearGradient(
                                                gradient: Gradient(colors: [.blue, .green]),
                                                startPoint: .leading,
                                                endPoint: .trailing
                                            )
                                        )
                                        .frame(width: geometry.size.width * CGFloat(milestoneProgress), height: 6)
                                }
                            }
                            .frame(height: 6)
                        }
                    }

                    Spacer()

                    // 진행률 표시
                    if item.status == .climbing && totalMilestones > 0 {
                        Text("\(Int(milestoneProgress * 100))%")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }

                    // 펼치기/접기 아이콘
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color(.secondarySystemBackground))
                )
            }
            .buttonStyle(PlainButtonStyle())

            // 펼친 상태: 전체 헤더
            if isExpanded {
                VStack(spacing: 0) {
                    // 배경 이미지 헤더
                    ZStack(alignment: .bottomLeading) {
                        // 배경 이미지
                        if let bgImage = item.backgroundImage, UIImage(named: bgImage) != nil {
                            Image(bgImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200)
                                .clipped()
                                .overlay(
                                    LinearGradient(
                                        gradient: Gradient(colors: [
                                            Color.black.opacity(0.6),
                                            Color.black.opacity(0.2),
                                            Color.clear
                                        ]),
                                        startPoint: .bottom,
                                        endPoint: .top
                                    )
                                )
                        } else {
                            // 기본 그라데이션 배경
                            LinearGradient(
                                gradient: Gradient(colors: [
                                    item.category.color.opacity(0.8),
                                    item.category.color.opacity(0.4)
                                ]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            .frame(height: 200)
                        }

                        // 타이틀 오버레이
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Image(systemName: item.thumbnail)
                                    .font(.caption)
                                Text(item.category.rawValue)
                                    .font(.caption)
                                    .fontWeight(.medium)
                            }
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(Color.white.opacity(0.9))
                            .foregroundColor(item.category.color)
                            .cornerRadius(12)

                            if item.status == .climbing && totalMilestones > 0 {
                                Text("\(Int(milestoneProgress * 100))% 완료")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                    }
                    .cornerRadius(15)
                    .padding(.top, 12)

                    // 마일스톤 진행 상황 (climbing 상태일 때만)
                    if item.status == .climbing && totalMilestones > 0 {
                        VStack(spacing: 16) {
                            // 진행 메시지
                            Text(motivationalMessage)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.secondary)

                            // 마일스톤 타임라인
                            MilestoneTimelineView(milestones: item.milestones)

                            // 진행 요약
                            HStack(spacing: 20) {
                                VStack(spacing: 2) {
                                    Text("\(completedMilestones)")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                    Text("완료")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }

                                Divider()
                                    .frame(height: 30)

                                VStack(spacing: 2) {
                                    Text("\(totalMilestones - completedMilestones)")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.orange)
                                    Text("남음")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }

                                Divider()
                                    .frame(height: 30)

                                VStack(spacing: 2) {
                                    Text("\(totalMilestones)")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.blue)
                                    Text("전체")
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.vertical, 12)
                            .padding(.horizontal, 24)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color(.secondarySystemBackground))
                            )
                        }
                        .padding(.top, 16)
                    }
                }
                .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
    }
}

// MARK: - 마일스톤 타임라인 뷰
struct MilestoneTimelineView: View {
    let milestones: [Milestone]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // 진행 바
            GeometryReader { geometry in
                let totalWidth = geometry.size.width
                let completedCount = milestones.filter { $0.isCompleted }.count
                let progress = milestones.isEmpty ? 0 : CGFloat(completedCount) / CGFloat(milestones.count)

                ZStack(alignment: .leading) {
                    // 배경 트랙
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)

                    // 진행 바
                    RoundedRectangle(cornerRadius: 4)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.blue, .green]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .frame(width: totalWidth * progress, height: 8)
                        .animation(.easeInOut(duration: 0.3), value: progress)

                    // 마일스톤 마커들
                    ForEach(Array(milestones.enumerated()), id: \.element.id) { index, milestone in
                        let position = milestones.count > 1
                            ? CGFloat(index) / CGFloat(milestones.count - 1)
                            : 0.5

                        Circle()
                            .fill(milestone.isCompleted ? Color.green : Color.gray.opacity(0.4))
                            .frame(width: 16, height: 16)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                            )
                            .overlay(
                                milestone.isCompleted
                                    ? Image(systemName: "checkmark")
                                        .font(.system(size: 8, weight: .bold))
                                        .foregroundColor(.white)
                                    : nil
                            )
                            .position(x: totalWidth * position, y: 4)
                    }
                }
            }
            .frame(height: 16)
            .padding(.horizontal, 8)

            // 마일스톤 미니 카드들 (스크롤)
            if !milestones.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(Array(milestones.enumerated()), id: \.element.id) { index, milestone in
                            MilestoneMiniCard(milestone: milestone, index: index + 1)
                        }
                    }
                    .padding(.horizontal, 4)
                }
            }
        }
    }
}

// MARK: - 마일스톤 미니 카드
struct MilestoneMiniCard: View {
    let milestone: Milestone
    let index: Int

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 4) {
                Text("\(index)")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width: 18, height: 18)
                    .background(milestone.isCompleted ? Color.green : Color.gray)
                    .clipShape(Circle())

                if milestone.isCompleted {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.caption)
                        .foregroundColor(.green)
                }
            }

            Text(milestone.title)
                .font(.caption)
                .fontWeight(.medium)
                .lineLimit(2)
                .foregroundColor(milestone.isCompleted ? .primary : .secondary)
        }
        .padding(10)
        .frame(width: 120, alignment: .leading)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(milestone.isCompleted
                    ? Color.green.opacity(0.1)
                    : Color(.secondarySystemBackground))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(milestone.isCompleted ? Color.green.opacity(0.3) : Color.clear, lineWidth: 1)
                )
        )
    }
}

// 기존 MountainHeaderView는 호환성을 위해 유지 (새 뷰로 대체)
struct MountainHeaderView: View {
    @ObservedObject var item: BucketListItem

    var body: some View {
        BucketHeaderView(item: item)
    }
}

struct ObstaclesSection: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("🚧 장애물 메타인지")
                    .font(.title3)
                    .fontWeight(.bold)

                Spacer()

                Text("\(item.obstacles.filter { $0.isCleared }.count)/\(item.obstacles.count) 클리어")
                    .font(.caption)
                    .foregroundColor(.green)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(4)
            }

            if item.obstacles.isEmpty {
                Text("장애물을 파악 중입니다...")
                    .foregroundColor(.secondary)
                    .padding()
            } else {
                ForEach(item.obstacles) { obstacle in
                    ObstacleRow(item: item, obstacle: obstacle)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button(role: .destructive) {
                                viewModel.deleteObstacle(item: item, obstacle: obstacle)
                            } label: {
                                Label("삭제", systemImage: "trash")
                            }
                        }
                }
            }
        }
    }
}

struct ObstacleRow: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    let obstacle: Obstacle
    @State private var showingEditSheet = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(obstacle.type.rawValue)
                    .font(.headline)
                
                Spacer()
                
                if obstacle.isCleared {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                }
            }
            
            Text(obstacle.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)
                    
                    RoundedRectangle(cornerRadius: 4)
                        .fill(obstacle.isCleared ? Color.green : Color.blue)
                        .frame(width: geometry.size.width * CGFloat(obstacle.progress / 100), height: 8)
                }
            }
            .frame(height: 8)
            
            HStack {
                Text("\(Int(obstacle.currentValue)) / \(Int(obstacle.targetValue)) \(obstacle.unit)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("\(Int(obstacle.progress))%")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(obstacle.isCleared ? .green : .blue)
            }
            
            Button(action: {
                showingEditSheet = true
            }) {
                HStack {
                    Image(systemName: "pencil")
                    Text("진행상황 업데이트")
                }
                .font(.caption)
                .foregroundColor(.blue)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 3, x: 0, y: 2)
        )
        .sheet(isPresented: $showingEditSheet) {
            EditObstacleSheet(item: item, obstacle: obstacle)
        }
    }
}

struct MilestonesSection: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    @State private var showingEditSheet: Milestone?
    @State private var showingReorderSheet = false

    var completedCount: Int {
        item.milestones.filter { $0.isCompleted }.count
    }

    var totalCount: Int {
        item.milestones.count
    }

    var progressPercentage: Double {
        guard totalCount > 0 else { return 0 }
        return Double(completedCount) / Double(totalCount) * 100
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            // 헤더
            HStack {
                Text("⛺️ 마일스톤")
                    .font(.title3)
                    .fontWeight(.bold)

                Spacer()

                if totalCount > 1 {
                    Button(action: { showingReorderSheet = true }) {
                        Image(systemName: "arrow.up.arrow.down")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                            .padding(6)
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(6)
                    }
                }

                if totalCount > 0 {
                    Text("\(completedCount)/\(totalCount) 완료")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(completedCount == totalCount ? .green : .blue)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .fill(completedCount == totalCount ? Color.green.opacity(0.15) : Color.blue.opacity(0.15))
                        )
                }
            }

            // 마일스톤 리스트
            if item.milestones.isEmpty {
                VStack(spacing: 12) {
                    Image(systemName: "signpost.right.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.blue.opacity(0.3))

                    Text("아직 마일스톤이 없습니다")
                        .font(.headline)
                        .foregroundColor(.secondary)

                    Text("목표를 달성하기 위한 단계들을 추가해보세요")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 30)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(12)
            } else {
                ForEach(item.milestones) { milestone in
                    MilestoneRow(item: item, milestone: milestone)
                        .contextMenu {
                            Button(action: {
                                showingEditSheet = milestone
                            }) {
                                Label("수정", systemImage: "pencil")
                            }

                            Button(role: .destructive, action: {
                                viewModel.deleteMilestone(item: item, milestone: milestone)
                            }) {
                                Label("삭제", systemImage: "trash")
                            }
                        }
                }
            }
        }
        .sheet(item: $showingEditSheet) { milestone in
            EditMilestoneSheet(item: item, milestone: milestone)
        }
        .sheet(isPresented: $showingReorderSheet) {
            MilestoneReorderSheet(item: item)
        }
    }
}

// MARK: - 마일스톤 순서 변경 시트
struct MilestoneReorderSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @ObservedObject var item: BucketListItem

    var body: some View {
        NavigationView {
            List {
                ForEach(item.milestones) { milestone in
                    HStack(spacing: 12) {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.gray)

                        VStack(alignment: .leading, spacing: 4) {
                            HStack(spacing: 6) {
                                Image(systemName: milestone.isCompleted ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(milestone.isCompleted ? .green : .gray)
                                    .font(.subheadline)

                                Text(milestone.title)
                                    .font(.body)
                                    .fontWeight(.medium)
                                    .strikethrough(milestone.isCompleted)
                                    .foregroundColor(milestone.isCompleted ? .secondary : .primary)
                            }

                            if !milestone.description.isEmpty {
                                Text(milestone.description)
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                            }
                        }

                        Spacer()
                    }
                    .padding(.vertical, 4)
                }
                .onMove { from, to in
                    viewModel.reorderMilestones(item: item, fromOffsets: from, toOffset: to)
                }
            }
            .listStyle(.insetGrouped)
            .environment(\.editMode, .constant(.active))
            .navigationTitle("순서 변경")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("완료") {
                        dismiss()
                    }
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

struct MilestoneRow: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    let milestone: Milestone
    @State private var showingChecklist = false
    @State private var showingDeadlinePicker = false
    @State private var selectedDeadline = Date()
    @State private var checklistItemForInput: ChecklistItem?
    @State private var checklistItemForDetail: ChecklistItem?
    @State private var evidenceText = ""
    @State private var showingAddChecklist = false
    @State private var newChecklistText = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // 메인 마일스톤 헤더
            HStack(alignment: .top, spacing: 12) {
                // 완료 상태 아이콘 (자동으로 결정됨)
                Image(systemName: milestone.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(milestone.isCompleted ? .green : .gray)
                    .font(.title3)

                VStack(alignment: .leading, spacing: 4) {
                    Text(milestone.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .strikethrough(milestone.isCompleted)

                    Text(milestone.description)
                        .font(.caption)
                        .foregroundColor(.secondary)

                    // 체크리스트 진행률 표시
                    if !milestone.checklist.isEmpty {
                        let completedCount = milestone.checklist.filter { $0.isCompleted }.count
                        HStack(spacing: 4) {
                            ProgressView(value: milestone.checklistProgress)
                                .progressViewStyle(LinearProgressViewStyle(tint: milestone.isCompleted ? .green : .blue))
                                .frame(width: 60)
                            Text("\(completedCount)/\(milestone.checklist.count)")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }

                    // 데드라인 표시
                    HStack(spacing: 6) {
                        if let deadline = milestone.deadline {
                            let status = milestone.deadlineStatus
                            Button(action: {
                                selectedDeadline = deadline
                                showingDeadlinePicker = true
                            }) {
                                HStack(spacing: 4) {
                                    Image(systemName: "calendar")
                                        .font(.caption2)
                                    Text(deadline, style: .date)
                                        .font(.caption2)
                                    if case .none = status {} else {
                                        Text("(\(status.text))")
                                            .font(.caption2)
                                            .fontWeight(.medium)
                                    }
                                }
                                .foregroundColor(status.color)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 3)
                                .background(status.color.opacity(0.1))
                                .cornerRadius(4)
                            }
                            .buttonStyle(PlainButtonStyle())
                        } else if !milestone.isCompleted {
                            Button(action: {
                                selectedDeadline = Calendar.current.date(byAdding: .day, value: 7, to: Date()) ?? Date()
                                showingDeadlinePicker = true
                            }) {
                                HStack(spacing: 4) {
                                    Image(systemName: "calendar.badge.plus")
                                        .font(.caption2)
                                    Text("기한 설정")
                                        .font(.caption2)
                                }
                                .foregroundColor(.gray)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 3)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(4)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }

                        if let date = milestone.completedDate {
                            Text("완료: \(date, style: .date)")
                                .font(.caption2)
                                .foregroundColor(.green)
                        }
                    }
                }

                Spacer()

                // 체크리스트 펼치기 버튼 (항상 표시)
                Button(action: {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        showingChecklist.toggle()
                    }
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: showingChecklist ? "chevron.up" : "checklist")
                            .font(.system(size: 14, weight: .medium))
                        if milestone.checklist.isEmpty {
                            Text("+")
                                .font(.system(size: 12, weight: .bold))
                        }
                    }
                    .foregroundColor(.blue)
                    .padding(8)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding()

            // 체크리스트 섹션
            if showingChecklist {
                VStack(alignment: .leading, spacing: 0) {
                    Divider()
                        .padding(.horizontal)

                    if !milestone.checklist.isEmpty {
                        ForEach(milestone.checklist) { checklistItem in
                            VStack(alignment: .leading, spacing: 0) {
                                HStack(spacing: 12) {
                                    Button(action: {
                                        if checklistItem.isCompleted {
                                            checklistItemForDetail = checklistItem
                                        } else {
                                            evidenceText = ""
                                            checklistItemForInput = checklistItem
                                        }
                                    }) {
                                        HStack(spacing: 12) {
                                            Image(systemName: checklistItem.isCompleted ? "checkmark.square.fill" : "square")
                                                .foregroundColor(checklistItem.isCompleted ? .green : .gray)
                                                .font(.system(size: 18))

                                            VStack(alignment: .leading, spacing: 2) {
                                                Text(checklistItem.text)
                                                    .font(.subheadline)
                                                    .foregroundColor(checklistItem.isCompleted ? .secondary : .primary)
                                                    .strikethrough(checklistItem.isCompleted)
                                                    .multilineTextAlignment(.leading)
                                                    .fixedSize(horizontal: false, vertical: true)

                                                if checklistItem.isCompleted, let date = checklistItem.completedDate {
                                                    Text(date, style: .date)
                                                        .font(.caption2)
                                                        .foregroundColor(.green)
                                                }
                                            }

                                            Spacer()

                                            if checklistItem.isCompleted && checklistItem.evidence != nil {
                                                Image(systemName: "doc.text.fill")
                                                    .font(.caption)
                                                    .foregroundColor(.blue)
                                            }
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())

                                    // 삭제 버튼
                                    if !checklistItem.isCompleted {
                                        Button(action: {
                                            viewModel.deleteChecklistItem(item: item, milestone: milestone, checklistItem: checklistItem)
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .font(.system(size: 16))
                                                .foregroundColor(.gray.opacity(0.5))
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                                .background(checklistItem.isCompleted ? Color.green.opacity(0.05) : Color.clear)

                                if checklistItem.isCompleted, let evidence = checklistItem.evidence, !evidence.isEmpty {
                                    Text(evidence)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                        .lineLimit(1)
                                        .padding(.horizontal)
                                        .padding(.leading, 30)
                                        .padding(.bottom, 8)
                                }
                            }

                            if checklistItem.id != milestone.checklist.last?.id {
                                Divider()
                                    .padding(.leading, 50)
                            }
                        }

                        Divider()
                            .padding(.horizontal)
                    }

                    // 체크리스트 추가 UI
                    if showingAddChecklist {
                        HStack(spacing: 12) {
                            Image(systemName: "square")
                                .foregroundColor(.gray)
                                .font(.system(size: 18))

                            TextField("새 체크포인트 입력", text: $newChecklistText)
                                .font(.subheadline)
                                .textFieldStyle(PlainTextFieldStyle())

                            if !newChecklistText.isEmpty {
                                Button(action: {
                                    viewModel.addChecklistItem(item: item, milestone: milestone, text: newChecklistText)
                                    newChecklistText = ""
                                }) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.green)
                                        .font(.system(size: 20))
                                }
                                .buttonStyle(PlainButtonStyle())
                            }

                            Button(action: {
                                showingAddChecklist = false
                                newChecklistText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20))
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    } else {
                        Button(action: {
                            showingAddChecklist = true
                        }) {
                            HStack(spacing: 8) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.blue)
                                Text("체크포인트 추가")
                                    .font(.subheadline)
                                    .foregroundColor(.blue)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 12)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .background(Color(.systemGray6).opacity(0.5))
            }
        }
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(milestone.isCompleted ? Color.green.opacity(0.1) : Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 3, x: 0, y: 2)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(deadlineBorderColor, lineWidth: deadlineBorderColor == .clear ? 0 : 2)
        )
        .sheet(isPresented: $showingDeadlinePicker) {
            DeadlinePickerSheet(
                deadline: $selectedDeadline,
                hasDeadline: milestone.deadline != nil,
                onSave: { date in
                    viewModel.setMilestoneDeadline(item: item, milestone: milestone, deadline: date)
                },
                onRemove: {
                    viewModel.setMilestoneDeadline(item: item, milestone: milestone, deadline: nil)
                }
            )
        }
        .sheet(item: $checklistItemForInput) { checklistItem in
            EvidenceInputSheet(
                checklistText: checklistItem.text,
                evidenceText: $evidenceText,
                onComplete: {
                    viewModel.completeChecklistItem(
                        item: item,
                        milestone: milestone,
                        checklistItem: checklistItem,
                        evidence: evidenceText
                    )
                    checklistItemForInput = nil
                },
                onCancel: {
                    checklistItemForInput = nil
                }
            )
        }
        .sheet(item: $checklistItemForDetail) { checklistItem in
            EvidenceDetailSheet(
                checklistItem: checklistItem,
                onUncomplete: {
                    viewModel.uncompleteChecklistItem(
                        item: item,
                        milestone: milestone,
                        checklistItem: checklistItem
                    )
                    checklistItemForDetail = nil
                },
                onDismiss: {
                    checklistItemForDetail = nil
                }
            )
        }
    }

    private var deadlineBorderColor: Color {
        if milestone.isCompleted {
            return Color.green.opacity(0.3)
        }
        switch milestone.deadlineStatus {
        case .overdue:
            return Color.red.opacity(0.5)
        case .today:
            return Color.orange.opacity(0.5)
        case .soon:
            return Color.yellow.opacity(0.5)
        default:
            return Color.clear
        }
    }
}

struct DeadlinePickerSheet: View {
    @Environment(\.dismiss) var dismiss
    @Binding var deadline: Date
    let hasDeadline: Bool
    let onSave: (Date) -> Void
    let onRemove: () -> Void

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                DatePicker(
                    "마감 기한",
                    selection: $deadline,
                    in: Date()...,
                    displayedComponents: .date
                )
                .datePickerStyle(.graphical)
                .padding()

                // 빠른 선택 버튼
                VStack(spacing: 12) {
                    Text("빠른 선택")
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    HStack(spacing: 12) {
                        QuickDateButton(title: "오늘", date: Date(), selectedDate: $deadline)
                        QuickDateButton(title: "내일", date: Calendar.current.date(byAdding: .day, value: 1, to: Date()) ?? Date(), selectedDate: $deadline)
                        QuickDateButton(title: "이번 주", date: Calendar.current.date(byAdding: .day, value: 7, to: Date()) ?? Date(), selectedDate: $deadline)
                        QuickDateButton(title: "한 달", date: Calendar.current.date(byAdding: .month, value: 1, to: Date()) ?? Date(), selectedDate: $deadline)
                    }
                }
                .padding(.horizontal)

                Spacer()

                if hasDeadline {
                    Button(action: {
                        onRemove()
                        dismiss()
                    }) {
                        Text("기한 삭제")
                            .foregroundColor(.red)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("마감 기한 설정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("저장") {
                        onSave(deadline)
                        dismiss()
                    }
                }
            }
        }
    }
}

struct QuickDateButton: View {
    let title: String
    let date: Date
    @Binding var selectedDate: Date

    var body: some View {
        Button(action: {
            selectedDate = date
        }) {
            Text(title)
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.blue)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
        }
    }
}

// MARK: - 체크리스트 근거 입력 시트
struct EvidenceInputSheet: View {
    let checklistText: String
    @Binding var evidenceText: String
    let onComplete: () -> Void
    let onCancel: () -> Void
    @FocusState private var isFocused: Bool

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // 체크리스트 항목 표시
                VStack(alignment: .leading, spacing: 8) {
                    Text("완료할 항목")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    HStack(spacing: 12) {
                        Image(systemName: "square")
                            .foregroundColor(.gray)
                        Text(checklistText)
                            .font(.body)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                // 근거 입력
                VStack(alignment: .leading, spacing: 8) {
                    Text("완료 근거 / 배운 점")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    TextEditor(text: $evidenceText)
                        .frame(minHeight: 120)
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .focused($isFocused)
                        .overlay(
                            Group {
                                if evidenceText.isEmpty {
                                    Text("이 항목을 완료한 근거나 배운 점을 기록해주세요...")
                                        .foregroundColor(.gray.opacity(0.7))
                                        .padding(12)
                                        .allowsHitTesting(false)
                                }
                            },
                            alignment: .topLeading
                        )
                }
                .padding(.horizontal)

                // 안내 텍스트
                Text("나중에 이 기록을 다시 볼 수 있어요")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)

                Spacer()

                // 완료 버튼
                Button(action: onComplete) {
                    HStack {
                        Image(systemName: "checkmark.circle.fill")
                        Text("완료로 표시")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(evidenceText.isEmpty ? Color.gray : Color.green)
                    .cornerRadius(12)
                }
                .disabled(evidenceText.isEmpty)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .navigationTitle("근거 기록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소", action: onCancel)
                }
            }
            .onAppear {
                isFocused = true
            }
        }
    }
}

// MARK: - 체크리스트 근거 상세 시트
struct EvidenceDetailSheet: View {
    let checklistItem: ChecklistItem
    let onUncomplete: () -> Void
    let onDismiss: () -> Void

    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // 체크리스트 항목 표시
                VStack(alignment: .leading, spacing: 8) {
                    Text("완료된 항목")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    HStack(spacing: 12) {
                        Image(systemName: "checkmark.square.fill")
                            .foregroundColor(.green)
                        Text(checklistItem.text)
                            .font(.body)
                            .strikethrough()
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.green.opacity(0.1))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                // 완료 날짜
                if let date = checklistItem.completedDate {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("완료 날짜")
                            .font(.caption)
                            .foregroundColor(.secondary)

                        HStack {
                            Image(systemName: "calendar")
                                .foregroundColor(.green)
                            Text(date, style: .date)
                                .font(.body)
                        }
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                }

                // 근거 표시
                VStack(alignment: .leading, spacing: 8) {
                    Text("기록한 근거 / 배운 점")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    ScrollView {
                        Text(checklistItem.evidence ?? "기록된 근거가 없습니다.")
                            .font(.body)
                            .foregroundColor(checklistItem.evidence != nil ? .primary : .secondary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                    }
                    .frame(minHeight: 100)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                }
                .padding(.horizontal)

                Spacer()

                // 완료 해제 버튼
                Button(action: onUncomplete) {
                    HStack {
                        Image(systemName: "arrow.uturn.backward")
                        Text("완료 해제")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
            .navigationTitle("완료 기록")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("닫기", action: onDismiss)
                }
            }
        }
    }
}

struct DailyProgressSection: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("📈 일일 진행")
                    .font(.title3)
                    .fontWeight(.bold)

                Spacer()

                if !item.dailyProgress.isEmpty {
                    Text("\(item.dailyProgress.count)회 기록")
                        .font(.caption)
                        .foregroundColor(.orange)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.orange.opacity(0.1))
                        .cornerRadius(4)
                }
            }

            if item.dailyProgress.isEmpty {
                Text("아직 기록이 없어요. 첫 발걸음을 남겨보세요!")
                    .foregroundColor(.secondary)
                    .padding()
            } else {
                ForEach(item.dailyProgress.suffix(10).reversed()) { progress in
                    DailyProgressRow(progress: progress)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button(role: .destructive) {
                                viewModel.deleteDailyProgress(item: item, progress: progress)
                            } label: {
                                Label("삭제", systemImage: "trash")
                            }
                        }
                }

                if item.dailyProgress.count > 10 {
                    Text("최근 10개 표시 중 (전체 \(item.dailyProgress.count)개)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .padding(.top, 4)
                }
            }
        }
    }
}

struct DailyProgressRow: View {
    let progress: DailyProgress

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "checkmark.circle.fill")
                .foregroundColor(.green)
                .font(.title3)

            VStack(alignment: .leading, spacing: 4) {
                Text(progress.action)
                    .font(.subheadline)

                Text(progress.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 3, x: 0, y: 2)
        )
    }
}

struct CompletionSummaryView: View {
    @ObservedObject var item: BucketListItem

    var body: some View {
        VStack(spacing: 15) {
            Image(systemName: "trophy.fill")
                .font(.system(size: 60))
                .foregroundColor(.yellow)

            Text("축하합니다! 🎉")
                .font(.title)
                .fontWeight(.bold)

            Text("버킷리스트를 달성했어요!")
                .foregroundColor(.secondary)

            if let date = item.dateCompleted {
                Text("완료일: \(date, style: .date)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.yellow.opacity(0.2), Color.orange.opacity(0.2)]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
        )
    }
}

struct EditObstacleSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var item: BucketListItem
    let obstacle: Obstacle
    @State private var currentValue: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section("현재 진행상황") {
                    HStack {
                        TextField("숫자 입력", text: $currentValue)
                            .keyboardType(.decimalPad)
                        Text(obstacle.unit)
                            .foregroundColor(.secondary)
                    }
                }
                
                Section("목표") {
                    Text("\(Int(obstacle.targetValue)) \(obstacle.unit)")
                }
            }
            .navigationTitle("진행상황 업데이트")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("저장") {
                        if let value = Double(currentValue) {
                            viewModel.updateObstacle(item: item, obstacle: obstacle, newValue: value)
                            dismiss()
                        }
                    }
                }
            }
            .onAppear {
                currentValue = String(Int(obstacle.currentValue))
            }
        }
    }
}

struct AddProgressSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss

    @ObservedObject var item: BucketListItem
    @State private var action = ""
    @State private var selectedObstacle: Obstacle?
    @State private var progressValue = ""
    @State private var autoCalculate = true

    var calculatedDistance: Double {
        guard let obstacle = selectedObstacle,
              let value = Double(progressValue),
              value > 0 else { return 0 }

        let progressIncrease = (value / obstacle.targetValue) * 100
        return progressIncrease
    }

    var body: some View {
        NavigationView {
            Form {
                Section("오늘 무엇을 했나요?") {
                    TextField("예: 5만원 저축했어요", text: $action)
                }

                Section("어떤 장애물을 극복했나요?") {
                    Picker("장애물 선택", selection: $selectedObstacle) {
                        Text("선택 안 함").tag(nil as Obstacle?)
                        ForEach(item.obstacles) { obstacle in
                            HStack {
                                Text(obstacle.type.rawValue)
                                Text("-")
                                Text(obstacle.description)
                            }
                            .tag(obstacle as Obstacle?)
                        }
                    }
                    .pickerStyle(.menu)

                    if let obstacle = selectedObstacle {
                        HStack {
                            TextField("증가량", text: $progressValue)
                                .keyboardType(.decimalPad)
                            Text(obstacle.unit)
                                .foregroundColor(.secondary)
                        }

                        VStack(alignment: .leading, spacing: 4) {
                            Text("현재 진행: \(Int(obstacle.currentValue)) → \(Int(obstacle.currentValue + (Double(progressValue) ?? 0))) / \(Int(obstacle.targetValue)) \(obstacle.unit)")
                                .font(.caption)
                                .foregroundColor(.blue)

                            if autoCalculate && !progressValue.isEmpty {
                                Text("자동 계산: +\(Int(calculatedDistance))cm 등반")
                                    .font(.caption)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding(.vertical, 4)
                    }
                }

                if selectedObstacle == nil {
                    Section("수동 등반 거리 입력") {
                        HStack {
                            TextField("거리", text: $progressValue)
                                .keyboardType(.numberPad)
                            Text("cm")
                                .foregroundColor(.secondary)
                        }
                    }
                }

                Section {
                    if selectedObstacle != nil && autoCalculate {
                        Text("장애물 진행에 따라 등반 거리가 자동으로 계산됩니다!")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    } else {
                        Text("작은 행동들이 모여 큰 산을 오를 수 있어요!")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("오늘의 진행")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("기록") {
                        recordProgress()
                    }
                    .disabled(action.isEmpty || progressValue.isEmpty)
                }
            }
        }
    }

    private func recordProgress() {
        let distance: Double

        if let obstacle = selectedObstacle, let value = Double(progressValue), autoCalculate {
            // 장애물 진행 업데이트
            viewModel.updateObstacle(item: item, obstacle: obstacle, newValue: obstacle.currentValue + value)
            // 자동 계산된 거리 사용
            distance = calculatedDistance
        } else if let value = Double(progressValue) {
            // 수동 입력 거리 사용
            distance = value
        } else {
            return
        }

        viewModel.addDailyProgress(item: item, action: action, distance: distance)
        dismiss()
    }
}

// MARK: - Edit Sheets
struct EditTitleSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @ObservedObject var item: BucketListItem
    @State private var title: String

    init(item: BucketListItem) {
        self.item = item
        _title = State(initialValue: item.title)
    }

    var body: some View {
        NavigationView {
            Form {
                Section("제목") {
                    TextField("버킷리스트 제목", text: $title)
                }
            }
            .navigationTitle("제목 수정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("저장") {
                        viewModel.updateBucketTitle(item: item, newTitle: title)
                        dismiss()
                    }
                    .disabled(title.isEmpty)
                }
            }
        }
    }
}

struct AddObstacleSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @ObservedObject var item: BucketListItem

    @State private var selectedMilestone: Milestone?
    @State private var type: ObstacleType = .money
    @State private var description = ""
    @State private var targetValue = ""
    @State private var unit = ""
    @State private var customNote = ""
    @State private var showMilestoneSelector = false

    // 마일스톤에 따른 추천 장애물
    var suggestedObstacles: [(type: ObstacleType, description: String, targetValue: String, unit: String)] {
        guard let milestone = selectedMilestone else {
            return getDefaultSuggestions()
        }
        return getSuggestionsForMilestone(milestone)
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    milestoneSelectionSection
                    suggestedObstaclesSection
                    obstacleTypeSection
                    detailInputSection
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("어려움 기록하기")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("추가") {
                        if let value = Double(targetValue) {
                            viewModel.addObstacle(
                                item: item,
                                type: type,
                                description: description,
                                targetValue: value,
                                unit: unit,
                                relatedMilestoneId: selectedMilestone?.id,
                                customNote: customNote.isEmpty ? nil : customNote
                            )
                            dismiss()
                        }
                    }
                    .disabled(description.isEmpty || targetValue.isEmpty || unit.isEmpty)
                    .fontWeight(.bold)
                }
            }
        }
    }

    private var milestoneSelectionSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "link.circle.fill")
                    .foregroundColor(.blue)
                Text("연관 마일스톤")
                    .font(.headline)
            }

            if item.milestones.isEmpty {
                Text("등록된 마일스톤이 없습니다")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            } else {
                milestoneSelectorButton
                if showMilestoneSelector {
                    milestoneList
                }
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5)
    }

    private var milestoneSelectorButton: some View {
        Button(action: { showMilestoneSelector.toggle() }) {
            HStack {
                if let milestone = selectedMilestone {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text(milestone.title)
                        .foregroundColor(.primary)
                } else {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.blue)
                    Text("마일스톤 선택 (선택사항)")
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.secondary)
                    .rotationEffect(.degrees(showMilestoneSelector ? 180 : 0))
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
        .buttonStyle(PlainButtonStyle())
    }

    private var milestoneList: some View {
        VStack(spacing: 8) {
            ForEach(item.milestones) { milestone in
                Button(action: {
                    if selectedMilestone?.id == milestone.id {
                        selectedMilestone = nil
                    } else {
                        selectedMilestone = milestone
                    }
                    showMilestoneSelector = false
                }) {
                    HStack {
                        Image(systemName: selectedMilestone?.id == milestone.id ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(selectedMilestone?.id == milestone.id ? .green : .gray)
                        Text(milestone.title)
                            .foregroundColor(.primary)
                        Spacer()
                        if milestone.isCompleted {
                            Text("완료")
                                .font(.caption)
                                .foregroundColor(.green)
                        }
                    }
                    .padding(.horizontal, 12)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(selectedMilestone?.id == milestone.id ? Color.blue.opacity(0.1) : Color.clear)
                    )
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.05))
        .cornerRadius(10)
    }

    private var suggestedObstaclesSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "lightbulb.fill")
                    .foregroundColor(.yellow)
                Text("추천 어려움")
                    .font(.headline)
            }

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(suggestedObstacles, id: \.description) { suggestion in
                        suggestionCard(suggestion)
                    }
                }
                .padding(.horizontal, 4)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5)
    }

    private func suggestionCard(_ suggestion: (type: ObstacleType, description: String, targetValue: String, unit: String)) -> some View {
        Button(action: {
            type = suggestion.type
            description = suggestion.description
            targetValue = suggestion.targetValue
            unit = suggestion.unit
        }) {
            VStack(alignment: .leading, spacing: 6) {
                Text(suggestion.type.rawValue)
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(suggestion.description)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                Text("\(suggestion.targetValue)\(suggestion.unit)")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            .padding(12)
            .frame(width: 140)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(description == suggestion.description ? Color.blue.opacity(0.15) : Color.gray.opacity(0.1))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(description == suggestion.description ? Color.blue : Color.clear, lineWidth: 2)
                    )
            )
        }
        .buttonStyle(PlainButtonStyle())
    }

    private var obstacleTypeSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "tag.fill")
                    .foregroundColor(.orange)
                Text("어려움 유형")
                    .font(.headline)
            }

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                ForEach([ObstacleType.money, .time, .skill, .knowledge, .timing], id: \.self) { obstacleType in
                    obstacleTypeButton(obstacleType)
                }
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5)
    }

    private func obstacleTypeButton(_ obstacleType: ObstacleType) -> some View {
        Button(action: { type = obstacleType }) {
            HStack {
                Text(obstacleType.rawValue)
                    .font(.subheadline)
                Spacer()
                if type == obstacleType {
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                }
            }
            .padding(12)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(type == obstacleType ? Color.blue.opacity(0.15) : Color.gray.opacity(0.1))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(type == obstacleType ? Color.blue : Color.clear, lineWidth: 2)
                    )
            )
        }
        .buttonStyle(PlainButtonStyle())
    }

    private var detailInputSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: typeIcon)
                    .foregroundColor(typeColor)
                Text(typeTitle)
                    .font(.headline)
            }

            // 유형별 다른 입력 폼
            switch type {
            case .money:
                moneyInputFields
            case .time:
                timeInputFields
            case .skill:
                skillInputFields
            case .knowledge:
                knowledgeInputFields
            case .timing:
                timingInputFields
            }

            TextField("추가 메모 (선택사항)", text: $customNote)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5)
        .onChange(of: type) { _, _ in
            // 유형 변경 시 기본값 설정
            setDefaultValuesForType()
        }
    }

    private var typeIcon: String {
        switch type {
        case .money: return "wonsign.circle.fill"
        case .time: return "clock.fill"
        case .skill: return "figure.strengthtraining.traditional"
        case .knowledge: return "book.fill"
        case .timing: return "calendar.circle.fill"
        }
    }

    private var typeColor: Color {
        switch type {
        case .money: return .green
        case .time: return .orange
        case .skill: return .red
        case .knowledge: return .blue
        case .timing: return .purple
        }
    }

    private var typeTitle: String {
        switch type {
        case .money: return "필요 비용"
        case .time: return "필요 시간"
        case .skill: return "필요 체력/스킬"
        case .knowledge: return "필요 지식"
        case .timing: return "타이밍/시기"
        }
    }

    private func setDefaultValuesForType() {
        switch type {
        case .money:
            unit = "원"
            if description.isEmpty { description = "" }
        case .time:
            unit = "일"
            if description.isEmpty { description = "" }
        case .skill:
            unit = "달성"
            targetValue = "1"
            if description.isEmpty { description = "" }
        case .knowledge:
            unit = "완료"
            targetValue = "1"
            if description.isEmpty { description = "" }
        case .timing:
            unit = "확보"
            targetValue = "1"
            if description.isEmpty { description = "" }
        }
    }

    // MARK: - 비용 입력 필드
    private var moneyInputFields: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("무엇에 필요한 비용인가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 4) {
                Text("목표 금액")
                    .font(.caption)
                    .foregroundColor(.secondary)

                HStack {
                    TextField("금액", text: $targetValue)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)

                    Text("원")
                        .foregroundColor(.secondary)
                        .padding(.horizontal, 8)
                }
            }

            // 금액 빠른 선택
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(["100000", "500000", "1000000", "2000000", "5000000"], id: \.self) { amount in
                        Button(action: {
                            targetValue = amount
                            unit = "원"
                        }) {
                            Text(formatMoney(amount))
                                .font(.caption)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(targetValue == amount ? Color.green.opacity(0.2) : Color.gray.opacity(0.1))
                                .foregroundColor(targetValue == amount ? .green : .primary)
                                .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }

    private func formatMoney(_ value: String) -> String {
        guard let num = Int(value) else { return value }
        if num >= 10000 {
            return "\(num / 10000)만원"
        }
        return "\(num)원"
    }

    // MARK: - 시간 입력 필드
    private var timeInputFields: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("어떤 시간이 필요한가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            HStack(spacing: 12) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("기간")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    TextField("숫자", text: $targetValue)
                        .keyboardType(.numberPad)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                }

                VStack(alignment: .leading, spacing: 4) {
                    Text("단위")
                        .font(.caption)
                        .foregroundColor(.secondary)

                    Picker("단위", selection: $unit) {
                        Text("시간").tag("시간")
                        Text("일").tag("일")
                        Text("주").tag("주")
                        Text("개월").tag("개월")
                    }
                    .pickerStyle(.menu)
                    .padding(8)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                }
                .frame(width: 100)
            }

            // 시간 빠른 선택
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach([("1", "일"), ("7", "일"), ("14", "일"), ("1", "개월"), ("3", "개월"), ("6", "개월")], id: \.0) { value, unitValue in
                        Button(action: {
                            targetValue = value
                            unit = unitValue
                        }) {
                            Text("\(value)\(unitValue)")
                                .font(.caption)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(targetValue == value && unit == unitValue ? Color.orange.opacity(0.2) : Color.gray.opacity(0.1))
                                .foregroundColor(targetValue == value && unit == unitValue ? .orange : .primary)
                                .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
    }

    // MARK: - 체력/스킬 입력 필드
    private var skillInputFields: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("어떤 체력/스킬이 필요한가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 8) {
                Text("목표 수준")
                    .font(.caption)
                    .foregroundColor(.secondary)

                // 스킬 레벨 선택
                HStack(spacing: 8) {
                    ForEach(["초급", "중급", "고급", "전문가"], id: \.self) { level in
                        Button(action: {
                            description = description.isEmpty ? level + " 수준 달성" : description
                            targetValue = "1"
                            unit = "달성"
                        }) {
                            Text(level)
                                .font(.subheadline)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 10)
                                .background(Color.red.opacity(0.1))
                                .foregroundColor(.red)
                                .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }

            Text("💡 구체적인 목표: '\(description.isEmpty ? "예: 5km 달리기 가능" : description)'")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }

    // MARK: - 지식 입력 필드
    private var knowledgeInputFields: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("어떤 지식/정보가 필요한가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 8) {
                Text("학습 유형")
                    .font(.caption)
                    .foregroundColor(.secondary)

                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                    ForEach(["정보 수집", "강의/교육", "자격증 취득", "실습/연습"], id: \.self) { knowledgeType in
                        Button(action: {
                            if description.isEmpty {
                                description = knowledgeType
                            }
                            targetValue = "1"
                            unit = "완료"
                        }) {
                            HStack {
                                Image(systemName: knowledgeTypeIcon(knowledgeType))
                                Text(knowledgeType)
                                    .font(.subheadline)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color.blue.opacity(0.1))
                            .foregroundColor(.blue)
                            .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }

            Text("💡 예: '현지 언어 기초 학습', '운전면허 취득'")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }

    private func knowledgeTypeIcon(_ type: String) -> String {
        switch type {
        case "정보 수집": return "magnifyingglass"
        case "강의/교육": return "graduationcap"
        case "자격증 취득": return "rosette"
        case "실습/연습": return "hammer"
        default: return "book"
        }
    }

    // MARK: - 타이밍 입력 필드
    private var timingInputFields: some View {
        VStack(alignment: .leading, spacing: 12) {
            TextField("어떤 시기/타이밍이 필요한가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            VStack(alignment: .leading, spacing: 8) {
                Text("타이밍 유형")
                    .font(.caption)
                    .foregroundColor(.secondary)

                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                    ForEach(["시즌/계절", "휴가 기간", "특별 이벤트", "예약 시기"], id: \.self) { timingType in
                        Button(action: {
                            if description.isEmpty {
                                description = timingType + " 확보"
                            }
                            targetValue = "1"
                            unit = "확보"
                        }) {
                            HStack {
                                Image(systemName: timingTypeIcon(timingType))
                                Text(timingType)
                                    .font(.subheadline)
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color.purple.opacity(0.1))
                            .foregroundColor(.purple)
                            .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }

            Text("💡 예: '오로라 시즌 (9-3월)', '벚꽃 시기'")
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }

    private func timingTypeIcon(_ type: String) -> String {
        switch type {
        case "시즌/계절": return "leaf"
        case "휴가 기간": return "airplane"
        case "특별 이벤트": return "star"
        case "예약 시기": return "calendar.badge.clock"
        default: return "calendar"
        }
    }

    private func getDefaultSuggestions() -> [(type: ObstacleType, description: String, targetValue: String, unit: String)] {
        switch item.category {
        case .travel:
            return [
                (.money, "여행 경비", "3000000", "원"),
                (.time, "휴가 일수 확보", "14", "일"),
                (.knowledge, "현지 정보 수집", "1", "완료")
            ]
        case .experience:
            return [
                (.money, "체험 비용", "500000", "원"),
                (.skill, "필요 체력/기술", "1", "달성"),
                (.timing, "적절한 시기", "1", "확보")
            ]
        case .achievement:
            return [
                (.time, "준비 기간", "30", "일"),
                (.skill, "필요 역량", "1", "달성"),
                (.knowledge, "관련 지식", "1", "완료")
            ]
        case .learning:
            return [
                (.time, "학습 시간", "100", "시간"),
                (.money, "교육비", "500000", "원"),
                (.knowledge, "선행 지식", "1", "완료")
            ]
        case .health:
            return [
                (.time, "운동 시간", "30", "일"),
                (.skill, "체력 수준", "1", "달성"),
                (.money, "장비/시설비", "300000", "원")
            ]
        case .relationship:
            return [
                (.time, "함께할 시간", "10", "회"),
                (.timing, "적절한 기회", "1", "확보"),
                (.money, "활동 비용", "200000", "원")
            ]
        }
    }

    private func getSuggestionsForMilestone(_ milestone: Milestone) -> [(type: ObstacleType, description: String, targetValue: String, unit: String)] {
        let title = milestone.title.lowercased()

        // 항공권/비행기 관련
        if title.contains("항공") || title.contains("비행") || title.contains("flight") {
            return [
                (.money, "항공권 비용", "1500000", "원"),
                (.timing, "좌석 예약 시기", "1", "확보"),
                (.knowledge, "노선 정보 조사", "1", "완료")
            ]
        }

        // 숙소 관련
        if title.contains("숙소") || title.contains("호텔") || title.contains("accommodation") {
            return [
                (.money, "숙박비", "1000000", "원"),
                (.timing, "예약 시기", "1", "확보"),
                (.knowledge, "숙소 리서치", "1", "완료")
            ]
        }

        // 예산/저축 관련
        if title.contains("예산") || title.contains("저축") || title.contains("비용") {
            return [
                (.money, "목표 금액", "2000000", "원"),
                (.time, "저축 기간", "6", "개월"),
                (.knowledge, "재정 계획 수립", "1", "완료")
            ]
        }

        // 체력/운동 관련
        if title.contains("체력") || title.contains("운동") || title.contains("훈련") {
            return [
                (.skill, "체력 수준 향상", "1", "달성"),
                (.time, "훈련 기간", "30", "일"),
                (.money, "장비/시설비", "200000", "원")
            ]
        }

        // 언어/학습 관련
        if title.contains("언어") || title.contains("공부") || title.contains("학습") {
            return [
                (.time, "학습 시간", "50", "시간"),
                (.knowledge, "기초 지식", "1", "완료"),
                (.money, "교재/강의비", "100000", "원")
            ]
        }

        // 장비/준비물 관련
        if title.contains("장비") || title.contains("준비물") || title.contains("구매") {
            return [
                (.money, "장비 구입비", "500000", "원"),
                (.knowledge, "장비 리서치", "1", "완료"),
                (.timing, "구매 시기", "1", "확보")
            ]
        }

        // 일정/계획 관련
        if title.contains("일정") || title.contains("계획") || title.contains("루트") {
            return [
                (.time, "계획 수립 시간", "5", "시간"),
                (.knowledge, "정보 수집", "1", "완료"),
                (.timing, "최적 시기 결정", "1", "확보")
            ]
        }

        // 자격증/시험 관련
        if title.contains("자격") || title.contains("시험") || title.contains("인증") {
            return [
                (.time, "준비 기간", "60", "일"),
                (.money, "시험/교육비", "300000", "원"),
                (.knowledge, "시험 범위 파악", "1", "완료")
            ]
        }

        return getDefaultSuggestions()
    }
}

struct AddMilestoneSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @ObservedObject var item: BucketListItem

    @State private var title = ""
    @State private var description = ""
    @State private var currentQuestion = 0

    let imaginationQuestions = [
        ("그 순간, 당신은 어디에 있을까요?", "장소나 상황을 상상해보세요"),
        ("누구와 함께 하고 싶나요?", "혼자여도 괜찮아요"),
        ("어떤 기분이 들 것 같아요?", "그 순간의 감정을 상상해보세요"),
        ("무엇이 보이고 들릴까요?", "오감으로 느껴보세요")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    // Header with sparkle animation
                    VStack(spacing: 12) {
                        Image(systemName: "sparkle")
                            .font(.system(size: 50))
                            .foregroundColor(.purple.opacity(0.6))

                        Text("설레는 순간을 상상해보세요")
                            .font(.title2)
                            .fontWeight(.bold)

                        Text("이 꿈을 향해 가는 길에\n어떤 순간들이 기다리고 있을까요?")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.top, 20)

                    // Imagination questions carousel
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            ForEach(0..<imaginationQuestions.count, id: \.self) { index in
                                Circle()
                                    .fill(index == currentQuestion ? Color.purple : Color.gray.opacity(0.3))
                                    .frame(width: 8, height: 8)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .center)

                        Button(action: {
                            withAnimation {
                                currentQuestion = (currentQuestion + 1) % imaginationQuestions.count
                            }
                        }) {
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(imaginationQuestions[currentQuestion].0)
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundColor(.purple)
                                    Text(imaginationQuestions[currentQuestion].1)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                Image(systemName: "arrow.right.circle")
                                    .foregroundColor(.purple.opacity(0.5))
                            }
                            .padding()
                            .background(Color.purple.opacity(0.1))
                            .cornerRadius(12)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.horizontal)

                    // Main input fields
                    VStack(alignment: .leading, spacing: 20) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("이 순간의 이름")
                                .font(.headline)
                                .foregroundColor(.primary)

                            TextField("예: 오로라를 처음 보는 순간", text: $title)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.systemBackground))
                                        .shadow(color: .purple.opacity(0.1), radius: 5)
                                )
                        }

                        VStack(alignment: .leading, spacing: 8) {
                            Text("이 순간을 위해 할 일")
                                .font(.headline)
                                .foregroundColor(.primary)

                            TextField("예: 오로라 예보 앱 설치하고 날씨 체크하기", text: $description)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color(.systemBackground))
                                        .shadow(color: .purple.opacity(0.1), radius: 5)
                                )
                        }
                    }
                    .padding(.horizontal)

                    // Encouragement message
                    VStack(spacing: 8) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink.opacity(0.5))
                        Text("작은 순간들이 모여 큰 꿈이 됩니다")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top, 10)

                    Spacer()

                    // Save button
                    Button(action: {
                        viewModel.addMilestone(item: item, title: title, description: description)
                        dismiss()
                    }) {
                        HStack {
                            Image(systemName: "sparkles")
                            Text("이 순간 담기")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.purple, Color.pink]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(12)
                    }
                    .disabled(title.isEmpty || description.isEmpty)
                    .opacity(title.isEmpty || description.isEmpty ? 0.5 : 1)
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.purple.opacity(0.05),
                        Color.pink.opacity(0.05)
                    ]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationTitle("설레는 순간")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }
            }
        }
    }
}

struct EditMilestoneSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @ObservedObject var item: BucketListItem
    let milestone: Milestone

    @State private var title = ""
    @State private var description = ""

    var body: some View {
        NavigationView {
            Form {
                Section("제목") {
                    TextField("마일스톤 이름", text: $title)
                }

                Section("설명") {
                    TextField("구체적인 행동", text: $description)
                }
            }
            .navigationTitle("마일스톤 수정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("저장") {
                        viewModel.updateMilestone(
                            item: item,
                            milestone: milestone,
                            newTitle: title,
                            newDescription: description
                        )
                        dismiss()
                    }
                    .disabled(title.isEmpty || description.isEmpty)
                }
            }
            .onAppear {
                title = milestone.title
                description = milestone.description
            }
        }
    }
}

// MARK: - Settings View
struct SettingsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink(destination: ArchiveView()) {
                        HStack {
                            Image(systemName: "trophy.fill")
                                .foregroundColor(.yellow)
                                .font(.title3)

                            VStack(alignment: .leading, spacing: 4) {
                                Text("아카이브")
                                    .font(.headline)

                                Text("완료한 \(viewModel.itemsCompleted.count)개의 꿈")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                } header: {
                    Text("나의 기록")
                }

                Section {
                    Toggle(isOn: $viewModel.useClassicMode) {
                        HStack(spacing: 12) {
                            Image(systemName: "mountain.2.fill")
                                .foregroundColor(.blue)
                                .font(.title3)

                            VStack(alignment: .leading, spacing: 4) {
                                Text("꿈 키우기 모드")
                                    .font(.headline)

                                Text("산 오르기 메타포로 버킷리스트를 관리합니다")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .tint(.blue)

                    if viewModel.useClassicMode {
                        Toggle(isOn: $viewModel.showArchiveTab) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("아카이브 탭 표시")
                                    .font(.headline)

                                Text("하단 탭바에 아카이브를 별도 탭으로 표시합니다")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                } header: {
                    Text("화면 설정")
                } footer: {
                    if viewModel.useClassicMode {
                        Text("꿈 키우기 모드에서는 프로젝트형태로 관리합니다.")
                    } else {
                        Text("기본 모드는 '내 창고'입니다. 열쇠를 만들어 보물상자를 열어보세요!")
                    }
                }

                Section {
                    HStack {
                        Text("전체 버킷리스트")
                        Spacer()
                        Text("\(viewModel.bucketItems.count)개")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Text("미시작")
                        Spacer()
                        Text("\(viewModel.myBucketLists.count)개")
                            .foregroundColor(.gray)
                    }

                    HStack {
                        Text("등반 중")
                        Spacer()
                        Text("\(viewModel.climbingBucketLists.count)개")
                            .foregroundColor(.orange)
                    }

                    HStack {
                        Text("완료")
                        Spacer()
                        Text("\(viewModel.itemsCompleted.count)개")
                            .foregroundColor(.green)
                    }
                } header: {
                    Text("통계")
                }

                Section {
                    HStack {
                        Text("버전")
                        Spacer()
                        Text("1.0.0")
                            .foregroundColor(.secondary)
                    }

                    Button {
                        viewModel.resetOnboarding()
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "play.circle.fill")
                                .foregroundColor(.purple)
                            Text("튜토리얼 다시 보기")
                                .foregroundColor(.primary)
                        }
                    }
                } header: {
                    Text("앱 정보")
                }
            }
            .navigationTitle("설정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("완료") {
                        dismiss()
                    }
                }
            }
        }
    }
}

// MARK: - Location Search View
struct LocationSearchView: View {
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    @State private var searchResults: [MKMapItem] = []
    @State private var isSearching = false
    var onLocationSelected: (LocationInfo) -> Void

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, onSearchButtonClicked: performSearch)

                if isSearching {
                    ProgressView("검색 중...")
                        .padding()
                } else if searchResults.isEmpty && !searchText.isEmpty {
                    Text("검색 결과가 없습니다")
                        .foregroundColor(.secondary)
                        .padding()
                } else {
                    List(searchResults, id: \.self) { mapItem in
                        Button(action: {
                            selectLocation(mapItem)
                        }) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(mapItem.name ?? "이름 없음")
                                    .font(.headline)

                                if let address = mapItem.placemark.title {
                                    Text(address)
                                        .font(.caption)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }

                Spacer()
            }
            .navigationTitle("장소 검색")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") {
                        dismiss()
                    }
                }
            }
        }
    }

    func performSearch() {
        guard !searchText.isEmpty else { return }

        isSearching = true
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText

        let search = MKLocalSearch(request: request)
        search.start { response, error in
            isSearching = false

            if let error = error {
                Logger().error("검색 에러: \(error.localizedDescription)")
                return
            }

            searchResults = response?.mapItems ?? []
        }
    }

    func selectLocation(_ mapItem: MKMapItem) {
        let location = LocationInfo(
            latitude: mapItem.placemark.coordinate.latitude,
            longitude: mapItem.placemark.coordinate.longitude,
            name: mapItem.name ?? "",
            address: mapItem.placemark.title
        )
        onLocationSelected(location)
        dismiss()
    }
}

// MARK: - Search Bar
struct SearchBar: View {
    @Binding var text: String
    var onSearchButtonClicked: () -> Void

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)

            TextField("장소를 검색하세요 (예: 에펠탑, 파리)", text: $text, onCommit: onSearchButtonClicked)
                .textFieldStyle(PlainTextFieldStyle())

            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding(10)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
        .padding(.top)
    }
}

// MARK: - Bucket Map View
struct BucketMapView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780), // 서울
            span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
        )
    )
    @State private var showingSettings = false

    var travelBuckets: [BucketListItem] {
        let filtered = viewModel.bucketItems.filter { $0.location != nil }
        Logger().info("🗺️ [꿈지도] travelBuckets 계산됨 - 총 \(filtered.count)개")
        for item in filtered {
            Logger().info("  📍 \(item.title) [\(item.status.rawValue)] - 위치: \(item.location?.name ?? "Unknown")")
        }
        return filtered
    }

    var body: some View {
        NavigationView {
            ZStack {
                Map(position: $cameraPosition) {
                    ForEach(travelBuckets) { item in
                        if let location = item.location {
                            Annotation(item.title, coordinate: location.coordinate) {
                                VStack(spacing: 4) {
                                    ZStack {
                                        Circle()
                                            .fill(item.category.color)
                                            .frame(width: 40, height: 40)

                                        Image(systemName: item.thumbnail)
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                    }
                                    .shadow(radius: 3)

                                    Text(item.title)
                                        .font(.caption2)
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, 6)
                                        .padding(.vertical, 3)
                                        .background(Color.white)
                                        .cornerRadius(4)
                                        .shadow(radius: 2)
                                }
                            }
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)

                if travelBuckets.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "map")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)

                        Text("위치가 설정된 버킷리스트가 없습니다")
                            .font(.headline)
                            .foregroundColor(.secondary)

                        Text("버킷리스트를 추가할 때 장소를 검색해보세요!")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(12)
                    .padding()
                }
            }
            .navigationTitle("내 꿈의 지도")
            .navigationBarTitleDisplayMode(.inline)
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
        .onAppear {
            Logger().info("🗺️ [꿈지도] 뷰 나타남 (onAppear)")
            Logger().info("  📊 전체 bucketItems 수: \(viewModel.bucketItems.count)")
            Logger().info("  📍 위치 정보 있는 꿈: \(travelBuckets.count)개")

            // 모든 bucketItems 로깅
            for (index, item) in viewModel.bucketItems.enumerated() {
                Logger().info("  [\(index)] \(item.title) - 상태: \(item.status.rawValue), 위치: \(item.location != nil ? "✓" : "✗")")
            }

            if let firstBucket = travelBuckets.first, let location = firstBucket.location {
                Logger().info("  🎯 첫 번째 꿈으로 카메라 이동: \(firstBucket.title) (\(location.name))")
                cameraPosition = .region(MKCoordinateRegion(
                    center: location.coordinate,
                    span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
                ))
            } else {
                Logger().warning("  ⚠️ 위치 정보가 있는 꿈이 없어서 카메라 이동 안 함")
            }
        }
    }
}

// MARK: - All Bucket Browser View
struct AllBucketBrowserView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss
    @State private var selectedCategory: BucketCategory = .travel
    @State private var searchText = ""
    @State private var showingSuccessAlert = false
    @State private var addedBucketTitle = ""

    var filteredItems: [BucketItem] {
        let categoryItems: [BucketItem]
        switch selectedCategory {
        case .travel:
            categoryItems = TravelBucket.allCases.map { BucketItem.travel($0) }
        case .experience:
            categoryItems = ExperienceBucket.allCases.map { BucketItem.experience($0) }
        case .achievement:
            categoryItems = AchievementBucket.allCases.map { BucketItem.achievement($0) }
        case .health:
            categoryItems = HealthBucket.allCases.map { BucketItem.health($0) }
        case .learning:
            categoryItems = LearningBucket.allCases.map { BucketItem.learning($0) }
        case .relationship:
            categoryItems = RelationshipBucket.allCases.map { BucketItem.relationship($0) }
        }

        if searchText.isEmpty {
            return categoryItems
        } else {
            return categoryItems.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Category Picker
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(BucketCategory.allCases, id: \.self) { category in
                            CategoryChip(
                                category: category,
                                isSelected: selectedCategory == category
                            ) {
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    selectedCategory = category
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 12)
                }
                .background(Color(.systemBackground))

                // Bucket List
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(filteredItems, id: \.title) { item in
                            BucketBrowserRow(item: item) {
                                viewModel.addBucketItem(
                                    title: item.title,
                                    category: item.category,
                                    thumbnail: item.thumbnail,
                                    backgroundImage: item.backgroundImage,
                                    location: item.location
                                )
                                addedBucketTitle = item.title
                                showingSuccessAlert = true
                            }
                        }
                    }
                    .padding()
                }
            }
            .searchable(text: $searchText, prompt: "버킷리스트 검색")
            .navigationTitle("전체 버킷리스트")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("닫기") {
                        dismiss()
                    }
                }
            }
            .alert("담기 완료!", isPresented: $showingSuccessAlert) {
                Button("확인", role: .cancel) { }
            } message: {
                Text("'\(addedBucketTitle)'\n내 버킷리스트에 담겼습니다!")
            }
        }
    }
}

// MARK: - Category Chip
struct CategoryChip: View {
    let category: BucketCategory
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 6) {
                Image(systemName: category.icon)
                    .font(.system(size: 14))
                Text(category.rawValue)
                    .font(.subheadline)
                    .fontWeight(isSelected ? .semibold : .regular)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(isSelected ? Color.blue : Color(.systemGray6))
            .foregroundColor(isSelected ? .white : .primary)
            .cornerRadius(20)
        }
    }
}

// MARK: - Bucket Browser Row
struct BucketBrowserRow: View {
    let item: BucketItem
    let onAdd: () -> Void
    @State private var isPressed = false

    var body: some View {
        HStack(spacing: 12) {
            // Thumbnail (backgroundImage 사용)
            ZStack {
                if !item.backgroundImage.isEmpty, UIImage(named: item.backgroundImage) != nil {
                    Image(item.backgroundImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } else {
                    // backgroundImage가 없으면 카테고리 색상 + 아이콘
                    item.category.color.opacity(0.2)
                    Image(systemName: item.thumbnail.isEmpty ? item.category.icon : item.thumbnail)
                        .font(.title2)
                        .foregroundColor(item.category.color)
                }
            }
            .frame(width: 60, height: 60)
            .cornerRadius(12)
            .clipped()

            // Title
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .font(.body)
                    .fontWeight(.medium)
                    .lineLimit(2)

                HStack(spacing: 4) {
                    Image(systemName: item.thumbnail.isEmpty ? item.category.icon : item.thumbnail)
                        .font(.caption2)
                    Text(item.category.rawValue)
                        .font(.caption)
                }
                .foregroundColor(.secondary)
            }

            Spacer()

            // Add Button
            Button(action: onAdd) {
                Image(systemName: "plus.circle.fill")
                    .font(.title2)
                    .foregroundColor(.blue)
            }
            .scaleEffect(isPressed ? 0.9 : 1.0)
            .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
                withAnimation(.easeInOut(duration: 0.1)) {
                    isPressed = pressing
                }
            }, perform: {})
        }
        .padding(12)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.05), radius: 4, x: 0, y: 2)
    }
}

// MARK: - Progress Timeline Views

struct ProgressTimelineView: View {
    @ObservedObject var item: BucketListItem
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var showAddRecord = false

    // 모든 진행 기록을 시간순으로 정렬
    var allRecords: [(date: Date, milestone: String, record: ProgressRecord)] {
        var records: [(date: Date, milestone: String, record: ProgressRecord)] = []

        for milestone in item.milestones {
            for record in milestone.progressRecords {
                records.append((date: record.date, milestone: milestone.title, record: record))
            }

            for checklistItem in milestone.checklist {
                for record in checklistItem.progressRecords {
                    records.append((date: record.date, milestone: "\(milestone.title) - \(checklistItem.text)", record: record))
                }
            }
        }

        return records.sorted(by: { $0.date > $1.date })
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    if allRecords.isEmpty {
                        EmptyTimelineView()
                            .padding(.top, 100)
                    } else {
                        ForEach(Array(allRecords.enumerated()), id: \.element.record.id) { index, record in
                            TimelineRecordCard(
                                date: record.date,
                                milestone: record.milestone,
                                record: record.record,
                                isFirst: index == 0
                            )
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("진행 타임라인")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showAddRecord = true }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.blue)
                    }
                }
            }
            .sheet(isPresented: $showAddRecord) {
                AddProgressRecordView(item: item)
                    .environmentObject(viewModel)
            }
        }
    }
}

struct EmptyTimelineView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "timeline.selection")
                .font(.system(size: 60))
                .foregroundColor(.gray.opacity(0.5))

            Text("아직 기록이 없어요")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.primary)

            Text("진행 과정을 기록하고\n사진과 함께 추억을 남겨보세요")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

struct TimelineRecordCard: View {
    let date: Date
    let milestone: String
    let record: ProgressRecord
    let isFirst: Bool

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월 d일 HH:mm"
        return formatter.string(from: date)
    }

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            // Timeline indicator
            VStack(spacing: 0) {
                Circle()
                    .fill(isFirst ? Color.blue : Color.gray)
                    .frame(width: 12, height: 12)

                if !isFirst {
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 2)
                }
            }

            VStack(alignment: .leading, spacing: 8) {
                // Date
                Text(formattedDate)
                    .font(.caption)
                    .foregroundColor(.secondary)

                // Milestone tag
                Text(milestone)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(6)

                // Note
                if !record.note.isEmpty {
                    Text(record.note)
                        .font(.subheadline)
                        .foregroundColor(.primary)
                        .fixedSize(horizontal: false, vertical: true)
                }

                // Photos
                if !record.photos.isEmpty {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(record.photos, id: \.self) { photoName in
                                if let image = loadImageFromDocuments(filename: photoName) {
                                    Image(uiImage: image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 120, height: 120)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                }
                            }
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
        }
    }

    private func loadImageFromDocuments(filename: String) -> UIImage? {
        let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let imagePath = documentsPath.appendingPathComponent(filename)
        return UIImage(contentsOfFile: imagePath.path)
    }
}

struct AddProgressRecordView: View {
    @ObservedObject var item: BucketListItem
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) var dismiss

    @State private var selectedMilestone: Milestone?
    @State private var note: String = ""
    @State private var selectedPhotos: [UIImage] = []
    @State private var showImagePicker = false

    var body: some View {
        NavigationStack {
            Form {
                Section("마일스톤 선택") {
                    Picker("마일스톤", selection: $selectedMilestone) {
                        Text("선택하세요").tag(nil as Milestone?)
                        ForEach(item.milestones) { milestone in
                            Text(milestone.title).tag(milestone as Milestone?)
                        }
                    }
                }

                Section("기록 내용") {
                    TextEditor(text: $note)
                        .frame(minHeight: 100)
                }

                Section("사진 추가") {
                    Button(action: { showImagePicker = true }) {
                        HStack {
                            Image(systemName: "photo.on.rectangle.angled")
                            Text("사진 선택")
                        }
                    }

                    if !selectedPhotos.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 8) {
                                ForEach(Array(selectedPhotos.enumerated()), id: \.offset) { index, image in
                                    ZStack(alignment: .topTrailing) {
                                        Image(uiImage: image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 80, height: 80)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))

                                        Button(action: {
                                            selectedPhotos.remove(at: index)
                                        }) {
                                            Image(systemName: "xmark.circle.fill")
                                                .foregroundColor(.white)
                                                .background(Circle().fill(Color.black.opacity(0.6)))
                                        }
                                        .padding(4)
                                    }
                                }
                            }
                            .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("진행 기록 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("저장") {
                        saveRecord()
                    }
                    .disabled(selectedMilestone == nil || (note.isEmpty && selectedPhotos.isEmpty))
                }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(images: $selectedPhotos, selectionLimit: 5)
            }
        }
    }

    private func saveRecord() {
        guard let milestone = selectedMilestone,
              let milestoneIndex = item.milestones.firstIndex(where: { $0.id == milestone.id }) else {
            return
        }

        // Save photos to documents
        var photoFilenames: [String] = []
        for (index, image) in selectedPhotos.enumerated() {
            let filename = "\(UUID().uuidString)_\(index).jpg"
            if let data = image.jpegData(compressionQuality: 0.8) {
                let documentsPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
                let filePath = documentsPath.appendingPathComponent(filename)
                try? data.write(to: filePath)
                photoFilenames.append(filename)
            }
        }

        // Create progress record
        let record = ProgressRecord(note: note, photos: photoFilenames)
        item.milestones[milestoneIndex].progressRecords.append(record)

        dismiss()
    }
}

// MARK: - Image Picker

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var images: [UIImage]
    var selectionLimit: Int = 1

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        config.selectionLimit = selectionLimit

        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)

            for result in results {
                if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                    result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                        if let image = image as? UIImage {
                            DispatchQueue.main.async {
                                self.parent.images.append(image)
                            }
                        }
                    }
                }
            }
        }
    }
}
