import SwiftUI
import MapKit

// MARK: - Bucket Fill View
struct BucketFillView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var showingAddSheet = false
    @State private var showingSettings = false
    @State private var selectedCategory: BucketCategory?
    @AppStorage("lastSelectedTab") private var selectedTab = 0
    @State private var showingSuccessAlert = false
    @State private var addedBucketTitle = ""

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                RecommendationsView(
                    showingAddSheet: $showingAddSheet,
                    selectedCategory: $selectedCategory,
                    selectedTab: $selectedTab,
                    showingSuccessAlert: $showingSuccessAlert,
                    addedBucketTitle: $addedBucketTitle
                )
                    .tag(0)

                MyBucketListView(showingAddSheet: $showingAddSheet)
                    .tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color.blue.opacity(0.05), Color.purple.opacity(0.05)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
            )
            .navigationTitle("꿈 모으기")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 20) {
                        Button(action: { withAnimation { selectedTab = 0 } }) {
                            Text("추천")
                                .font(.headline)
                                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                        }

                        Button(action: { withAnimation { selectedTab = 1 } }) {
                            Text("내 버킷리스트")
                                .font(.headline)
                                .foregroundColor(selectedTab == 1 ? .blue : .gray)
                        }
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingSettings = true }) {
                        Image(systemName: "gearshape.fill")
                            .font(.title3)
                    }
                }
            }
            .sheet(isPresented: $showingAddSheet) {
                AddBucketSheet(selectedCategory: selectedCategory)
            }
            .sheet(isPresented: $showingSettings) {
                SettingsView()
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
    @State private var randomBuckets: [(title: String, category: BucketCategory, thumbnail: String, backgroundImage: String)] = []

    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                VStack(alignment: .leading, spacing: 15) {
                    Text("이런 꿈은 어때요?")
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
                                    backgroundImage: randomBuckets[index].backgroundImage
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
                    Text("마음에 드는 꿈을 담아보세요")
                        .font(.headline)
                        .foregroundColor(.secondary)

                    Button(action: { showingAddSheet = true }) {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("직접 추가하기")
                                .fontWeight(.semibold)
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 12)
                        .background(Color.blue)
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

// MARK: - My Bucket List View
struct MyBucketListView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Binding var showingAddSheet: Bool

    var allMyBuckets: [BucketListItem] {
        viewModel.myBucketLists + viewModel.climbingBucketLists
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 0) {
                    if allMyBuckets.isEmpty {
                        VStack(spacing: 20) {
                            Spacer()
                                .frame(height: 100)

                            Image(systemName: "tray")
                                .font(.system(size: 60))
                                .foregroundColor(.gray)

                            Text("아직 담은 꿈이 없어요")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)

                            Text("추천 탭에서 마음에 드는 꿈을 선택하거나\n직접 추가해보세요")
                                .font(.body)
                                .foregroundColor(.secondary)
                                .multilineTextAlignment(.center)

                            Button(action: { showingAddSheet = true }) {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                    Text("꿈 추가하기")
                                        .fontWeight(.semibold)
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 12)
                                .background(Color.blue)
                                .cornerRadius(12)
                            }
                            .padding(.top, 20)

                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                    } else {
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                Text("\(allMyBuckets.count)개의 꿈")
                                    .font(.title3)
                                    .fontWeight(.bold)

                                Spacer()

                                Button(action: { showingAddSheet = true }) {
                                    Image(systemName: "plus.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.blue)
                                }
                            }
                            .padding(.horizontal, 20)
                            .padding(.top, 20)
                            .padding(.bottom, 16)

                            ForEach(allMyBuckets) { item in
                                NavigationLink(destination: BucketDetailView(item: item)) {
                                    MyBucketItemRow(item: item)
                                }
                                .buttonStyle(PlainButtonStyle())
                                .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                                    Button(role: .destructive) {
                                        viewModel.deleteBucket(item: item)
                                    } label: {
                                        Label("삭제", systemImage: "trash")
                                    }

                                    if item.status == .inBucket {
                                        Button {
                                            viewModel.startClimbing(item: item)
                                        } label: {
                                            Label("등반", systemImage: "flag.fill")
                                        }
                                        .tint(.blue)
                                    } else if item.status == .climbing {
                                        Button {
                                            viewModel.completeBucket(item: item)
                                        } label: {
                                            Label("완료", systemImage: "checkmark")
                                        }
                                        .tint(.green)
                                    }
                                }
                            }

                            // 하단 여백
                            Spacer()
                                .frame(height: 20)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
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

    var statusBadge: some View {
        Group {
            if item.status == .climbing {
                HStack(spacing: 4) {
                    Image(systemName: "figure.hiking")
                        .font(.caption2)
                    Text("등반중")
                        .font(.caption2)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.orange)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.orange.opacity(0.15))
                .cornerRadius(8)
            } else {
                HStack(spacing: 4) {
                    Image(systemName: "tray")
                        .font(.caption2)
                    Text("미시작")
                        .font(.caption2)
                        .fontWeight(.semibold)
                }
                .foregroundColor(.gray)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(8)
            }
        }
    }

    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image(systemName: item.thumbnail)
                    .foregroundColor(item.category.color)
                    .font(.title2)

                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("\(String(format: "%.1f", item.mountainHeight))km 산")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }

                Spacer()

                statusBadge
            }

            // 등반중인 경우 진행률 표시
            if item.status == .climbing {
                VStack(spacing: 8) {
                    HStack {
                        Text("진행률")
                            .font(.caption)
                            .foregroundColor(.secondary)

                        Spacer()

                        Text("\(Int(item.totalProgress))%")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }

                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 6)

                            RoundedRectangle(cornerRadius: 4)
                                .fill(Color.blue)
                                .frame(width: geometry.size.width * CGFloat(item.totalProgress / 100), height: 6)
                        }
                    }
                    .frame(height: 6)
                }
            }
        }
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
    
    var body: some View {
        NavigationView {
            Form {
                Section("꿈의 제목") {
                    TextField("예: 아이슬란드에서 오로라 보기", text: $title)
                }

                Section("카테고리") {
                    Picker("카테고리", selection: $category) {
                        ForEach(BucketCategory.allCases, id: \.self) { cat in
                            HStack {
                                Image(systemName: cat.icon)
                                Text(cat.rawValue)
                            }
                            .tag(cat)
                        }
                    }
                    .pickerStyle(.menu)
                }

                if category == .travel {
                    Section("위치 (선택사항)") {
                        if let loc = location {
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(loc.name)
                                        .font(.headline)
                                    if let address = loc.address {
                                        Text(address)
                                            .font(.caption)
                                            .foregroundColor(.secondary)
                                    }
                                }
                                Spacer()
                                Button(action: { location = nil }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                        } else {
                            Button(action: { showingLocationSearch = true }) {
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                    Text("장소 검색")
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("새로운 꿈 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("추가") {
                        if !title.isEmpty {
                            viewModel.addBucketItem(title: title, category: category, location: location)
                            dismiss()
                        }
                    }
                    .disabled(title.isEmpty)
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
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image(systemName: item.thumbnail)
                    .foregroundColor(item.category.color)
                    .font(.title2)

                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text("\(String(format: "%.1f", item.mountainHeight))km 산 등반 중")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            
            MountainVisualization(
                progress: item.climbedPercentage,
                height: item.mountainHeight
            )
            .frame(height: 120)
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("등반 진행률")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text("\(Int(item.totalProgress))%")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 4) {
                    Text("마일스톤")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    let completed = item.milestones.filter { $0.isCompleted }.count
                    Text("\(completed)/\(item.milestones.count)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                }
            }
            
            if let latest = item.dailyProgress.last {
                HStack(spacing: 8) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    
                    Text(latest.action)
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("+\(Int(latest.distance))cm")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                }
                .padding(8)
                .background(Color.green.opacity(0.1))
                .cornerRadius(8)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
        )
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
                        Image(systemName: "trophy.fill")
                            .font(.system(size: 80))
                            .foregroundColor(.yellow)
                        
                        Text("아직 완료한 꿈이 없어요")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("첫 번째 꿈을 이루고\n여기에 빛나는 기억을 남겨보세요")
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
                                Text("완료한 꿈들")
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
            .navigationTitle("아카이브")
        }
    }
}

struct StatsCard: View {
    let completedCount: Int
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Image(systemName: "trophy.fill")
                    .font(.title)
                    .foregroundColor(.yellow)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("완료한 꿈")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Text("\(completedCount)개")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
            }
        }
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
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.yellow.opacity(0.3), lineWidth: 2)
        )
    }
}

struct CompletedItemCard: View {
    @ObservedObject var item: BucketListItem
    
    var formattedDate: String {
        guard let date = item.dateCompleted else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy년 M월 d일"
        return formatter.string(from: date)
    }
    
    var body: some View {
        HStack(spacing: 15) {
            ZStack {
                Circle()
                    .fill(item.category.color.opacity(0.2))
                    .frame(width: 60, height: 60)
                
                Image(systemName: "trophy.fill")
                    .font(.title2)
                    .foregroundColor(item.category.color)
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(formattedDate)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack(spacing: 4) {
                    Image(systemName: "mountain.2.fill")
                        .font(.caption)
                    Text("\(String(format: "%.1f", item.mountainHeight))km 정복")
                        .font(.caption)
                }
                .foregroundColor(.green)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
        )
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
                    Button(action: {
                        viewModel.startClimbing(item: item)
                    }) {
                        HStack {
                            Image(systemName: "flag.fill")
                            Text("등반 시작하기")
                                .fontWeight(.semibold)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                    }
                    .padding(.horizontal)
                }

                if item.status == .climbing {
                    // Phase 1: 마일스톤 작성 (최우선)
                    if !phase1Completed {
                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "1.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                                Text("Phase 1: 마일스톤 작성")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Text("이 꿈을 이루기 위한 구체적인 단계들을 작성해보세요.")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .padding(.leading, 36)
                        }
                        .padding(.horizontal)

                        MilestonesSection(item: item)
                            .padding(.horizontal)

                        HStack(spacing: 12) {
                            Button(action: {
                                showingAddMilestoneSheet = true
                            }) {
                                HStack {
                                    Image(systemName: "plus.circle.fill")
                                    Text(hasMilestones ? "마일스톤 추가" : "첫 마일스톤 추가하기")
                                        .fontWeight(.semibold)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                            }

                            if hasMilestones {
                                Button(action: {
                                    viewModel.completeMilestonesPhase(item: item)
                                }) {
                                    HStack {
                                        Image(systemName: "checkmark.circle.fill")
                                        Text("작성 완료")
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

                    // Phase 2: 장애물과 일일 진행 (마일스톤 작성 완료 후)
                    if phase1Completed {
                        Divider()
                            .padding(.vertical, 10)

                        VStack(alignment: .leading, spacing: 12) {
                            HStack {
                                Image(systemName: "2.circle.fill")
                                    .font(.title2)
                                    .foregroundColor(.green)
                                Text("Phase 2: 마일스톤 달성하기")
                                    .font(.title3)
                                    .fontWeight(.bold)
                            }

                            Text("작성한 마일스톤들을 하나씩 달성해나가세요!")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .padding(.leading, 36)
                        }
                        .padding(.horizontal)

                        // 어려움 기록하기 버튼
                        Button(action: {
                            showingAddObstacleSheet = true
                        }) {
                            HStack(spacing: 10) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .foregroundColor(.orange)
                                Text("어려움 기록하기")
                                    .fontWeight(.semibold)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.orange.opacity(0.1))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(Color.orange.opacity(0.3), lineWidth: 1)
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
                                Text("오늘의 진행 기록하기")
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
                                Image(systemName: "checkmark.circle.fill")
                                Text("등반 완료!")
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
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
        .alert("등반 완료!", isPresented: $showingCompleteAlert) {
            Button("취소", role: .cancel) { }
            Button("완료") {
                viewModel.completeBucket(item: item)
                dismiss()
            }
        } message: {
            Text("이 버킷리스트를 완료하시겠어요? 아카이브로 이동됩니다.")
        }
        .alert("삭제하시겠어요?", isPresented: $showingDeleteAlert) {
            Button("취소", role: .cancel) { }
            Button("삭제", role: .destructive) {
                viewModel.deleteBucket(item: item)
                dismiss()
            }
        } message: {
            Text("이 버킷리스트를 삭제하면 모든 진행 내역이 사라집니다.")
        }
    }
}

struct MountainHeaderView: View {
    @ObservedObject var item: BucketListItem

    var motivationalMessage: String {
        let progress = item.totalProgress
        if progress >= 80 {
            return "거의 다 왔어요! 정상이 코앞이에요!"
        } else if progress >= 60 {
            return "절반 이상 올랐어요! 힘내세요!"
        } else if progress >= 40 {
            return "꾸준히 올라가고 있어요! 계속 가봐요!"
        } else if progress >= 20 {
            return "좋은 시작이에요! 한 걸음씩 나아가요!"
        } else {
            return "여정의 시작! 작은 발걸음도 소중해요!"
        }
    }

    var estimatedCompletion: String {
        guard !item.obstacles.isEmpty else { return "목표 설정 필요" }

        let avgProgress = item.totalProgress
        if avgProgress < 1 { return "진행 데이터 수집 중" }

        let daysElapsed = item.dailyProgress.count
        if daysElapsed < 3 { return "더 많은 데이터 필요" }

        let progressPerDay = avgProgress / Double(daysElapsed)
        let remainingProgress = 100 - avgProgress
        let estimatedDays = Int(remainingProgress / progressPerDay)

        if estimatedDays < 30 {
            return "약 \(estimatedDays)일 남음"
        } else if estimatedDays < 365 {
            let months = estimatedDays / 30
            return "약 \(months)개월 남음"
        } else {
            let years = estimatedDays / 365
            let remainingMonths = (estimatedDays % 365) / 30
            if remainingMonths > 0 {
                return "약 \(years)년 \(remainingMonths)개월 남음"
            } else {
                return "약 \(years)년 남음"
            }
        }
    }

    var body: some View {
        VStack(spacing: 15) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Image(systemName: item.thumbnail)
                        Text(item.category.rawValue)
                    }
                    .foregroundColor(item.category.color)
                    .font(.caption)

                    Text("\(String(format: "%.1f", item.mountainHeight))km 산")
                        .font(.title2)
                        .fontWeight(.bold)
                }

                Spacer()

                if item.status == .climbing {
                    VStack(alignment: .trailing, spacing: 4) {
                        Text("진행률")
                            .font(.caption)
                            .foregroundColor(.secondary)

                        Text("\(Int(item.totalProgress))%")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
            }

            if item.status == .climbing {
                MountainVisualization(
                    progress: item.climbedPercentage,
                    height: item.mountainHeight
                )
                .frame(height: 180)

                VStack(spacing: 8) {
                    Text(motivationalMessage)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)

                    HStack(spacing: 20) {
                        VStack(spacing: 2) {
                            Text("정상까지")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                            Text("\(String(format: "%.0f", item.mountainHeight * 100000 - item.climbedDistance))cm")
                                .font(.caption)
                                .fontWeight(.semibold)
                        }

                        VStack(spacing: 2) {
                            Text("예상 완료")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                            Text(estimatedCompletion)
                                .font(.caption)
                                .fontWeight(.semibold)
                        }

                        VStack(spacing: 2) {
                            Text("현재 등반")
                                .font(.caption2)
                                .foregroundColor(.secondary)
                            Text("\(String(format: "%.0f", item.climbedDistance))cm")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.green)
                        }
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.blue.opacity(0.1))
                    )
                }
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(.secondarySystemBackground))
        )
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

            // 진행률 바
            if totalCount > 0 {
                VStack(alignment: .leading, spacing: 6) {
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 8)

                            RoundedRectangle(cornerRadius: 8)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.blue, Color.green]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(width: geometry.size.width * CGFloat(progressPercentage / 100), height: 8)
                        }
                    }
                    .frame(height: 8)

                    Text(String(format: "%.0f%%", progressPercentage))
                        .font(.caption2)
                        .foregroundColor(.secondary)
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
    }
}

struct MilestoneRow: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    let milestone: Milestone
    @State private var showingChecklist = false
    @State private var showingDeadlinePicker = false
    @State private var selectedDeadline = Date()

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

                // 체크리스트 펼치기 버튼
                if !milestone.checklist.isEmpty {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            showingChecklist.toggle()
                        }
                    }) {
                        HStack(spacing: 4) {
                            Image(systemName: showingChecklist ? "chevron.up" : "checklist")
                                .font(.system(size: 14, weight: .medium))
                        }
                        .foregroundColor(.blue)
                        .padding(8)
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding()

            // 체크리스트 섹션
            if showingChecklist && !milestone.checklist.isEmpty {
                VStack(alignment: .leading, spacing: 0) {
                    Divider()
                        .padding(.horizontal)

                    ForEach(milestone.checklist) { checklistItem in
                        Button(action: {
                            viewModel.toggleChecklistItem(item: item, milestone: milestone, checklistItem: checklistItem)
                        }) {
                            HStack(spacing: 12) {
                                Image(systemName: checklistItem.isCompleted ? "checkmark.square.fill" : "square")
                                    .foregroundColor(checklistItem.isCompleted ? .green : .gray)
                                    .font(.system(size: 18))

                                Text(checklistItem.text)
                                    .font(.subheadline)
                                    .foregroundColor(checklistItem.isCompleted ? .secondary : .primary)
                                    .strikethrough(checklistItem.isCompleted)
                                    .multilineTextAlignment(.leading)
                                    .fixedSize(horizontal: false, vertical: true)

                                Spacer()
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                            .background(checklistItem.isCompleted ? Color.green.opacity(0.05) : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())

                        if checklistItem.id != milestone.checklist.last?.id {
                            Divider()
                                .padding(.leading, 50)
                        }
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
                    DailyProgressRow(progress: progress, mountainHeight: item.mountainHeight)
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
    let mountainHeight: Double
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "arrow.up.circle.fill")
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
            
            Text("+\(Int(progress.distance))cm")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.green)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(Color.green.opacity(0.1))
                .cornerRadius(6)
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
            
            Text("\(String(format: "%.1f", item.mountainHeight))km 산을 정복했어요!")
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
        let distancePerPercent = (item.mountainHeight * 100000) / 100
        return progressIncrease * distancePerPercent
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
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "pencil.circle.fill")
                    .foregroundColor(.purple)
                Text("상세 내용")
                    .font(.headline)
            }

            TextField("어떤 어려움인가요?", text: $description)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            targetAndUnitFields

            TextField("추가 메모 (선택사항)", text: $customNote)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.05), radius: 5)
    }

    private var targetAndUnitFields: some View {
        HStack(spacing: 10) {
            VStack(alignment: .leading, spacing: 4) {
                Text("목표치")
                    .font(.caption)
                    .foregroundColor(.secondary)
                TextField("숫자", text: $targetValue)
                    .keyboardType(.decimalPad)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text("단위")
                    .font(.caption)
                    .foregroundColor(.secondary)
                TextField("원, 일, 회 등", text: $unit)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }
            .frame(width: 100)
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

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("마일스톤 이름", text: $title)
                } header: {
                    Text("제목")
                } footer: {
                    Text("예: '레이캬비크 vs 북부 리서치', '월 30만원 저축 시작'")
                        .font(.caption)
                }

                Section {
                    TextField("구체적인 행동", text: $description)
                } header: {
                    Text("설명")
                } footer: {
                    Text("이 마일스톤을 달성하기 위해 무엇을 해야 하나요?")
                        .font(.caption)
                }

                Section {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("💡 팁")
                            .font(.headline)
                            .foregroundColor(.blue)

                        Text("• 작고 구체적인 단계로 나누세요")
                        Text("• 실제로 실행 가능한 행동으로 작성하세요")
                        Text("• 완료 여부를 명확히 판단할 수 있어야 합니다")
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                }
            }
            .navigationTitle("마일스톤 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") { dismiss() }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("추가") {
                        viewModel.addMilestone(item: item, title: title, description: description)
                        dismiss()
                    }
                    .disabled(title.isEmpty || description.isEmpty)
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
                    Toggle(isOn: $viewModel.showArchiveTab) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("아카이브 탭 표시")
                                .font(.headline)

                            Text("하단 탭바에 아카이브를 별도 탭으로 표시합니다")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                } header: {
                    Text("화면 설정")
                } footer: {
                    Text("토글을 켜면 하단에 아카이브 탭이 추가됩니다. 끄면 설정에서만 접근할 수 있습니다.")
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
                print("검색 에러: \(error.localizedDescription)")
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
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780), // 서울
        span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
    )

    var travelBuckets: [BucketListItem] {
        viewModel.bucketItems.filter { $0.category == .travel && $0.location != nil }
    }

    var body: some View {
        NavigationView {
            ZStack {
                Map(coordinateRegion: $region, annotationItems: travelBuckets) { item in
                    MapAnnotation(coordinate: item.location!.coordinate) {
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
                .edgesIgnoringSafeArea(.all)

                if travelBuckets.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "map")
                            .font(.system(size: 60))
                            .foregroundColor(.gray)

                        Text("위치가 설정된 여행 버킷리스트가 없습니다")
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
        }
        .onAppear {
            if let firstBucket = travelBuckets.first {
                region.center = firstBucket.location!.coordinate
                region.span = MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30)
            }
        }
    }
}
