import SwiftUI
import LeeoKit

@main
struct BucketClimbApp: App {
    @StateObject private var viewModel = BucketListViewModel.shared
    @Environment(\.scenePhase) private var scenePhase

    init() {
        // 백업 금고: 저장소를 읽기 전에 예약된 복원을 적용하고 업데이트 직전 백업을 뜬다.
        LeeoVault.start(BucketClimbSpec.self)
        // 한 달 동안 진행이 없는 목표 알림 (→ GoalReminders.swift)
        GoalReminders.start()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                // 개발자가 보낸 의견에 답장하면, 앱이 앞으로 올 때 답장을 시트로 보여 준다 (LeeoKit).
                .leeoFeedbackReplyNotice(BucketClimbSpec.self)
                // 아랍어는 숫자를 0-9, 날짜를 양력으로 맞춘다. 다른 언어는 기기 설정 그대로 (→ AppLocale)
                .environment(\.locale, AppLocale.display)
                .environment(\.calendar, AppLocale.calendar)
                .environmentObject(viewModel)
                // Pro — 산 것을 다시 읽는다. 팁 상품 · 끝나지 않은 팁도 LeeoStore 가 함께 챙긴다 (→ BucketClimbPro.swift)
                .task { await ProStore.shared.refresh() }
                // 아이폰 듀오: 접힘을 재서 아래로 흘린다. 시트 · 알림창도 접힌 선을 비킨다 (LeeoKit Fold).
                .foldAware()
                // Spotlight · Siri 가 찾는 목표를 앱을 열 때와 뒤로 보낼 때 맞춘다
                .onChange(of: scenePhase) { _, phase in
                    if phase != .inactive { Task { await GoalEntity.reindex() } }
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
    /// 무료 다운로드 + 무료 · Pro 두 칸. 목표 다섯 개와 단계 · 기록은 전부 무료, 목표 무제한만 Pro. 주 · 월 · 연 구독과 평생, 구독자에게만 보이는 졸업 평생가.
    /// 잠그는 자리는 `ProStore.isPro` 하나만 본다 — 아래 게이트는 그 자리를 적어 둔 계약이다.
    static let monetization = LeeoMonetization.freemiumSubscription(
        LeeoSubscriptionConfig(
            productIDs: ProProduct.all,
            // 자체 약관이 없으므로 애플 표준 사용권 계약(EULA)을 건다. 구독을 파는 앱의 심사 필수 항목이다.
            termsURL: termsURL,
            gate: LeeoGatePolicy(
                freeLimits: [ProFeature.goals.rawValue: ProStore.freeGoalLimit],
                proOnly: []),
            // 개발자 응원하기(팁) — 소모성 셋. 기능을 열지 않는다. 거래 리스너가 둘이면 같은 거래를 다투므로 LeeoStore 하나에 둔다.
            tipJar: LeeoTipJarConfig(productIDs: ProProduct.tips)))

    static let termsURL = URL(string: "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/")!

    /// 고마운 사람이 조금 더 내고 싶을 때 내는 곳. 기능을 열지 않는다.
    @MainActor static var tipJar: LeeoTipJar { ProStore.shared.tipJar }
}

/// 팁을 부탁할 만한 순간 — 완료한 목표 수와 마친 단계 수.
enum BucketClimbTipMoments {
    /// 완료한 목표 수. 큰 것부터.
    static let dreams = [10, 3, 1]
    /// 마친 단계(마일스톤) 수. 큰 것부터.
    static let steps = [50, 20, 10]

    /// 넘어선 순간, **인상적인 것부터**. 완료한 목표가 앞이다.
    static func reached(dreamsAchieved: Int, stepsDone: Int) -> [LeeoTipMoment] {
        let byDreams = dreams.filter { dreamsAchieved >= $0 }.map { threshold in
            LeeoTipMoment(id: "dreams.\(threshold)",
                          message: String(localized: "지금까지 목표 \(dreamsAchieved)개를 완료했습니다",
                                          locale: AppLocale.display,
                                          comment: "Tip ask card: how many goals the person has completed"))
        }
        let bySteps = steps.filter { stepsDone >= $0 }.map { threshold in
            LeeoTipMoment(id: "steps.\(threshold)",
                          message: String(localized: "지금까지 \(stepsDone)단계를 마쳤습니다",
                                          locale: AppLocale.display,
                                          comment: "Tip ask card: how many steps the person has completed toward their goals"))
        }
        return byDreams + bySteps
    }

    @MainActor static func reached(in viewModel: BucketListViewModel) -> [LeeoTipMoment] {
        reached(dreamsAchieved: viewModel.doneGoals.count, stepsDone: viewModel.doneStepCount)
    }
}
