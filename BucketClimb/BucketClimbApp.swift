import SwiftUI

@main
struct BucketClimbApp: App {
    @StateObject private var viewModel = BucketListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
