import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        if viewModel.useForgeView {
            // 꿈 대장간 모드
            ForgeMainView()
        } else if viewModel.showArchiveTab {
            // 기본 모드 + 아카이브 탭
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
            // 기본 모드
            BucketFillView()
        }
    }
}

// 꿈 대장간 메인 뷰 (탭 구조 포함)
struct ForgeMainView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @StateObject private var treasureViewModel = TreasureBoxViewModel()
    @State private var selectedTab = 0
    @State private var isInitialized = false

    var body: some View {
        TabView(selection: $selectedTab) {
            TreasureWarehouseView()
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

            BucketMapView()
                .tabItem {
                    Label("지도", systemImage: "map.fill")
                }
                .tag(3)
        }
        .environmentObject(treasureViewModel)
        .tint(.keyGold)
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
