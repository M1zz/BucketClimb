import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        Group {
            if !viewModel.hasCompletedOnboarding {
                // 온보딩 화면
                OnboardingView()
            } else if viewModel.useClassicMode {
                // 꿈 키우기 모드 (클래식)
                if viewModel.showArchiveTab {
                    TabView {
                        BucketFillView()
                            .tabItem {
                                Label("꿈 키우기", systemImage: "mountain.2.fill")
                            }

                        BucketMapView()
                            .tabItem {
                                Label("지도", systemImage: "map.fill")
                            }

                        ArchiveView()
                            .tabItem {
                                Label("아카이브", systemImage: "trophy.fill")
                            }
                    }
                    .accentColor(.blue)
                } else {
                    BucketFillView()
                }
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

    var body: some View {
        TabView(selection: $selectedTab) {
            TreasureWarehouseView()
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
                    Label("보물창고", systemImage: "sparkles")
                }
                .tag(2)

            BucketMapView()
                .tabItem {
                    Label("지도", systemImage: "map.fill")
                }
                .tag(3)
        }
        .environmentObject(treasureViewModel)
        .onAppear {
            if !isInitialized {
                treasureViewModel.setBucketListViewModel(viewModel)
                isInitialized = true
            }
            treasureViewModel.syncFromBucketList()
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(BucketListViewModel())
}
