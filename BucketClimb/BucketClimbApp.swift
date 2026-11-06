import SwiftUI
import LeeoKit

@main
struct BucketClimbApp: App {
    @StateObject private var viewModel = BucketListViewModel.shared
    @Environment(\.scenePhase) private var scenePhase

    init() {
        // 백업 금고: 저장소를 읽기 전에 예약된 복원을 적용하고 업데이트 직전 백업을 뜬다.
        LeeoVault.start(BucketClimbSpec.self)
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
                // 꿈을 찾아서 Pro — 산 것을 다시 읽는다. 팁 상품 · 끝나지 않은 팁도 LeeoStore 가 함께 챙긴다 (→ BucketClimbPro.swift)
                .task { await ProStore.shared.refresh() }
                // 아이폰 듀오: 접힘을 재서 아래로 흘린다. 시트 · 알림창도 접힌 선을 비킨다 (LeeoKit Fold).
                .foldAware()
                // Spotlight · Siri 가 찾는 꿈을 앱을 열 때와 뒤로 보낼 때 맞춘다
                .onChange(of: scenePhase) { _, phase in
                    if phase != .inactive { Task { await DreamEntity.reindex() } }
                    if phase == .active { Task { await ProStore.shared.refresh() } }
                }
        }
    }
}

// MARK: - 계약 (LeeoKit)

/// 앱의 계약. Pro 는 LeeoKit `LeeoStore` 가 맡는다(→ BucketClimbPro.swift).
/// ⚠️ 여기서 bootstrap · 피드백 · 분석을 켜지 않는다 (백업 금고만 App.init 에서 직접 켠다) — 계약을 채우는 값일 뿐 아무것도 돌지 않는다.
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
    /// 무료 다운로드 + 무료 · Pro 두 칸. 꿈 다섯 개를 골라 열쇠를 만들고 보물함을 여는 것은 전부 무료,
    /// 꿈 무제한 · 꿈 키우기 모드만 Pro. 주 · 월 · 연 구독과 평생, 구독자에게만 보이는 졸업 평생가.
    /// 잠그는 자리는 `ProStore.isPro` 하나만 본다 — 아래 게이트는 그 자리를 적어 둔 계약이다.
    static let monetization = LeeoMonetization.freemiumSubscription(
        LeeoSubscriptionConfig(
            productIDs: ProProduct.all,
            // 자체 약관이 없으므로 애플 표준 사용권 계약(EULA)을 건다. 구독을 파는 앱의 심사 필수 항목이다.
            termsURL: termsURL,
            gate: LeeoGatePolicy(
                freeLimits: [ProFeature.dreams.rawValue: ProStore.freeDreamLimit],
                proOnly: [ProFeature.growMode.rawValue]),
            // 개발자 응원하기(팁) — 소모성 셋. 기능을 열지 않는다. 거래 리스너가 둘이면 같은 거래를 다투므로 LeeoStore 하나에 둔다.
            tipJar: LeeoTipJarConfig(productIDs: ProProduct.tips)))

    static let termsURL = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/")!

    /// 고마운 사람이 조금 더 내고 싶을 때 내는 곳. 기능을 열지 않는다.
    @MainActor static var tipJar: LeeoTipJar { ProStore.shared.tipJar }
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
