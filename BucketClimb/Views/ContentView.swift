import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: BucketListViewModel

    var body: some View {
        if viewModel.showArchiveTab {
            TabView {
                BucketFillView()
                    .tabItem {
                        Label("꿈 모으기", systemImage: "mountain.2.fill")
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
    }
}

#Preview {
    ContentView()
        .environmentObject(BucketListViewModel())
}
