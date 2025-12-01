import SwiftUI

@main
struct BucketClimbApp: App {
    @StateObject private var viewModel = BucketListViewModel()

    init() {
        print("🚀 [BucketClimbApp] init 시작")

        // Unsplash API 키 설정
        let apiKey = "J6l9wPnPOBZLuMt_61HE4Z2AA7kSTO7OEsXxqsehnAQ"
        print("🔑 [BucketClimbApp] API 키 설정 시도: \(apiKey.prefix(10))...")
        UnsplashService.shared.setAccessKey(apiKey)

        // 설정 확인
        print("✅ [BucketClimbApp] API 설정 완료, isConfigured: \(UnsplashService.shared.isConfigured)")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
