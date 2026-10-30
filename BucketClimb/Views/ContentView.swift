import SwiftUI
import LeeoKit

struct ContentView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        Group {
            if !viewModel.hasCompletedOnboarding {
                // 온보딩 화면
                OnboardingView()
                    // 펼친 아이폰 듀오에서는 고르는 쪽 판에만 선다.
                    .foldConfined()
            } else if viewModel.useClassicMode {
                // 꿈 키우기 모드 (클래식)
                ClassicMainView()
            } else {
                // 내 창고 모드 (기본)
                ForgeMainView()
            }
        }
    }
}

// 내 창고 메인 뷰 (탭 구조 포함)
struct ForgeMainView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @StateObject private var treasureViewModel = TreasureBoxViewModel()
    @State private var selectedTab = 0
    @State private var isInitialized = false
    @Environment(\.foldLayout) private var fold

    var body: some View {
        TabView(selection: $selectedTab) {
            FoldDreamTab { TreasureWarehouseView(selectedTab: $selectedTab) } result: { TreasureTreasureView() }
                .tabItem {
                    Label("내 창고", systemImage: "hammer.fill")
                }
                .tag(0)

            FoldDreamTab { TreasureOceanView() } result: { TreasureTreasureView() }
                .tabItem {
                    Label("꿈의 바다", systemImage: "water.waves")
                }
                .tag(1)

            TreasureTreasureView()
                .tabItem {
                    Label("보물함", systemImage: "sparkles")
                }
                .tag(2)

            FoldDreamTab { BucketMapView() } result: { TreasureTreasureView() }
                .tabItem {
                    Label("지도", systemImage: "map.fill")
                }
                .tag(3)
        }
        // 펼치면 보물함은 늘 결과 쪽에 서므로 막대에는 나머지 셋만 선다.
        .foldTabBar(items: [
            .init(value: 0, title: String(localized: "내 창고"), symbol: "hammer.fill"),
            .init(value: 1, title: String(localized: "꿈의 바다"), symbol: "water.waves"),
            .init(value: 3, title: String(localized: "지도"), symbol: "map.fill"),
        ], selected: selectedTab) { selectedTab = $0 }
        // 보물함 탭에서 펴면 내 창고로 옮긴다. 보물함은 결과 쪽에 그대로 있다.
        .onChange(of: fold.isUnfolded, initial: true) { _, unfolded in
            if unfolded, selectedTab == 2 { selectedTab = 0 }
        }
        .environmentObject(treasureViewModel)
        .environmentObject(viewModel)
        .onAppear {
            if !isInitialized {
                treasureViewModel.setBucketListViewModel(viewModel)
                isInitialized = true
                #if DEBUG
                if let tab = ScreenshotSeed.tab { selectedTab = tab }
                #endif
            }
            treasureViewModel.syncFromBucketList()
        }
    }
}

// MARK: - 아이폰 듀오

/// 펼친 아이폰 듀오의 탭 한 장. 이 앱은 세로 고정이라 아래 판(고르는 쪽)은 그 탭,
/// 위 판(결과 쪽)은 이룬 꿈(보물함 · 아카이브)이다. 꿈을 키우는 쪽과 이룬 쪽이 접힌 선을 사이에 둔다.
/// 접혀 있거나 보통 아이폰이면 그 탭만, 곧 지금 화면 그대로다.
struct FoldDreamTab<Choose: View, Result: View>: View {
    @ViewBuilder let choose: () -> Choose
    @ViewBuilder let result: () -> Result

    var body: some View {
        FoldSplitView {
            choose()
        } result: {
            // 결과 쪽 판 안에서는 접히지 않은 화면처럼 선다.
            result().environment(\.foldLayout, .single)
        }
        // 탭 막대 자리(.foldTabBarRoom)는 각 탭 화면의 내비게이션 안에서 비운다.
        // 여기(판 밖)에 걸면 바닥 내용이 올라가지 않고 막대 밑에 깔린다.
    }
}

/// 꿈 키우기 모드(클래식). 펼치면 아카이브가 결과 쪽에 선다.
struct ClassicMainView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.foldLayout) private var fold
    @State private var selectedTab = 0

    var body: some View {
        if viewModel.showArchiveTab {
            TabView(selection: $selectedTab) {
                FoldDreamTab { BucketFillView() } result: { ArchiveView() }
                    .tabItem {
                        Label("꿈 키우기", systemImage: "mountain.2.fill")
                    }
                    .tag(0)

                FoldDreamTab { BucketMapView() } result: { ArchiveView() }
                    .tabItem {
                        Label("꿈지도", systemImage: "map.fill")
                    }
                    .tag(1)

                ArchiveView()
                    .tabItem {
                        Label("아카이브", systemImage: "trophy.fill")
                    }
                    .tag(2)
            }
            .accentColor(.blue)
            .foldTabBar(items: [
                .init(value: 0, title: String(localized: "꿈 키우기"), symbol: "mountain.2.fill"),
                .init(value: 1, title: String(localized: "꿈지도"), symbol: "map.fill"),
            ], selected: selectedTab) { selectedTab = $0 }
            .onChange(of: fold.isUnfolded, initial: true) { _, unfolded in
                if unfolded, selectedTab == 2 { selectedTab = 0 }
            }
        } else {
            FoldSplitView {
                BucketFillView()
            } result: {
                ArchiveView().environment(\.foldLayout, .single)
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(BucketListViewModel())
}
