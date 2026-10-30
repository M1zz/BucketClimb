import SwiftUI
import LeeoKit

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
                // 팁 상품을 불러오고 끝나지 않은 팁을 마저 센다 (LeeoStore 없이 혼자)
                .task { await BucketClimbSpec.tipJar.startStandalone() }
                // 아이폰 듀오: 접힘을 재서 아래로 흘린다. 시트 · 알림창도 접힌 선을 비킨다 (LeeoKit Fold).
                .foldAware()
        }
    }
}

// MARK: - 팁 (LeeoKit)

/// LeeoKit 은 팁 화면에만 쓴다. 유료 앱이라 따로 파는 것이 없다.
/// ⚠️ 여기서 bootstrap · 피드백 · 분석을 켜지 않는다 — 계약을 채우는 값일 뿐 아무것도 돌지 않는다.
enum BucketClimbSpec: LeeoAppSpec {
    static let appName = "꿈을 찾아서"
    static let developerEmail = "leeo@kakao.com"
    static let feedback = LeeoFeedbackConfig(
        containerIdentifier: "iCloud.com.Ysoup.FeedbackHub",
        appIdentifier: "com.bucketclimb.app"
    )
    static let legal = LeeoLegalConfig(
        privacyURL: URL(string: "https://m1zz.github.io/BucketClimb/ko/privacy.html")!,
        supportURL: URL(string: "https://m1zz.github.io/BucketClimb/ko/support.html")!
    )
    static let monetization = LeeoMonetization.paidUpfront

    /// 고마운 사람이 조금 더 내고 싶을 때 내는 곳. 소모성 상품 셋, 작은 것부터. 기능을 열지 않는다.
    @MainActor static let tipJar = LeeoTipJar(config: LeeoTipJarConfig(productIDs: [
        "com.bucketclimb.app.tip.small",
        "com.bucketclimb.app.tip.medium",
        "com.bucketclimb.app.tip.large",
    ]))
}

/// 팁을 부탁할 만한 순간 — 이룬 꿈과, 꿈을 향해 마친 단계 수.
enum BucketClimbTipMoments {
    /// 이룬 꿈 수. 큰 것부터.
    static let dreams = [10, 3, 1]
    /// 마친 단계(마일스톤) 수. 큰 것부터.
    static let steps = [50, 20, 10]

    /// 넘어선 순간, **인상적인 것부터**. 이룬 꿈이 앞이다.
    static func reached(dreamsAchieved: Int, stepsDone: Int) -> [LeeoTipMoment] {
        let byDreams = dreams.filter { dreamsAchieved >= $0 }.map { threshold in
            LeeoTipMoment(id: "dreams.\(threshold)",
                          message: String(localized: "지금까지 꿈 \(dreamsAchieved)개를 이뤘어요",
                                          comment: "Tip ask card: how many bucket-list dreams the person has achieved"))
        }
        let bySteps = steps.filter { stepsDone >= $0 }.map { threshold in
            LeeoTipMoment(id: "steps.\(threshold)",
                          message: String(localized: "꿈을 향해 \(stepsDone)단계를 마쳤어요",
                                          comment: "Tip ask card: how many milestone steps the person has completed toward their dreams"))
        }
        return byDreams + bySteps
    }

    @MainActor static func reached(in viewModel: BucketListViewModel) -> [LeeoTipMoment] {
        reached(dreamsAchieved: viewModel.itemsCompleted.count,
                stepsDone: viewModel.bucketItems.reduce(0) { $0 + $1.milestones.filter(\.isCompleted).count })
    }
}
