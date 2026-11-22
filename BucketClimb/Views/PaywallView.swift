//
//  PaywallView.swift
//  BucketClimb
//
//  Pro 를 파는 한 장, 구독 졸업 시트, 설정의 Pro 줄, 첫 목표를 완료한 뒤의 작은 카드.
//
//  **무료인 것을 먼저 말한다.** 비교표의 앞 줄들은 무료 · Pro 모두 ✓ 다. 이 화면은
//  "안 사면 못 쓴다"가 아니라 "목표 다섯 개를 단계로 나눠 체크하고 기록하는 건 전부 무료이고,
//  목표를 더 두고 싶은 날만 값을 받는다"는 말이다.
//
//  고르는 길: 연 구독(기본) · 평생, 펼치면 주 · 월. 첫 해 할인(App Store 첫 구독 할인)과
//  "연 구독 N년치" 한 줄은 `LeeoTermPicker` 가 알아서 보인다.
//  스토어에서 불러온 상품만 단추가 된다 — 아직 없는 상품은 서지 않는다.
//

import SwiftUI
import StoreKit
import LeeoKit

struct PaywallView: View {
    /// 어디서 막혀 들어왔는가. 그 줄을 비교표에서 강조한다.
    var highlight: ProFeature?

    @Environment(\.dismiss) private var dismiss
    /// 결제 시트를 **이 페이월이 떠 있는 창**에 띄운다.
    @Environment(\.purchase) private var purchaseAction

    @State private var term: LeeoPlanTerm = .yearly
    /// 펼쳐서 고른 주 · 월 구독. 고르면 연 / 평생 대신 이것을 산다.
    @State private var shortPlanID: String?
    @State private var loadingProducts = true

    private var store: ProStore { .shared }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    header
                    comparison
                    if store.hasPro {
                        Label("Pro를 쓰고 있습니다. 고맙습니다.", systemImage: "checkmark.seal.fill")
                            .font(.body.weight(.semibold))
                            .foregroundStyle(.green)
                    } else {
                        plans
                    }
                    if let message = store.failureMessage, !store.products.isEmpty {
                        Label(message, systemImage: "exclamationmark.triangle")
                            .font(.body)
                            .foregroundStyle(.orange)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    legal
                }
                .padding(24)
                .frame(maxWidth: 640)
                .frame(maxWidth: .infinity)
            }
            .background(Color(UIColor.systemGroupedBackground).ignoresSafeArea())
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button { dismiss() } label: { Label("닫기", systemImage: "xmark") }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("구매 복원") {
                        Task {
                            await store.restore()
                            if store.hasPro { dismiss() }
                        }
                    }
                    .disabled(store.isWorking)
                }
            }
            .task { await loadPlans() }
        }
        .leeoStyle(.bucketClimb)
    }

    // MARK: 머리

    private var header: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: "checklist")
                .font(.system(size: 40, weight: .semibold))
                .foregroundStyle(Color.proAccent)
                .frame(width: 72, height: 72)
                .background(Circle().fill(Color.proAccent.opacity(0.14)))
                .accessibilityHidden(true)
            Text("꿈을 찾아서 Pro")
                .font(.largeTitle.bold())
                .accessibilityAddTraits(.isHeader)
            Text("Pro에서는 목표를 개수 제한 없이 둘 수 있습니다.")
                .font(.body)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
            if let reason, !store.isPro {
                Label(reason, systemImage: "list.bullet")
                    .font(.body.weight(.semibold))
                    .foregroundStyle(Color.proAccent)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }

    /// 막혀 들어온 까닭.
    private var reason: String? {
        switch highlight {
        case .goals?:
            String(localized: "무료로 둘 수 있는 목표 \(ProStore.freeGoalLimit)개가 모두 찼습니다.",
                   locale: AppLocale.display,
                   comment: "Paywall: why it opened — the free limit of open goals is full")
        case nil:
            nil
        }
    }

    // MARK: 비교표

    private var comparison: some View {
        Grid(alignment: .leading, horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                Text("기능")
                Text("무료").gridColumnAlignment(.center)
                Text(verbatim: "Pro").gridColumnAlignment(.center)
            }
            .font(.body.weight(.semibold))
            .foregroundStyle(.secondary)
            .accessibilityHidden(true)
            Divider().gridCellColumns(3)
            row("목표 수", free: String(localized: "\(ProStore.freeGoalLimit)개", locale: AppLocale.display),
                pro: String(localized: "무제한"), feature: .goals)
            row("단계")
            row("기록 (메모 · 사진)")
            row("기록 내보내기 · 백업")
        }
        .padding(16)
        .background(Color.cardBackgroundAdaptive, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
    }

    /// 한 줄. `free` · `pro` 가 nil 이면 ✓, `feature` 가 있고 `free` 가 nil 이면 무료 칸은 – 다.
    private func row(_ title: LocalizedStringKey, free: String? = nil, pro: String? = nil,
                     feature: ProFeature? = nil) -> some View {
        let isHighlighted = feature != nil && feature == highlight
        let freeIncluded = feature == nil || free != nil
        return GridRow {
            Text(title).fixedSize(horizontal: false, vertical: true)
            cell(free, included: freeIncluded)
            cell(pro, included: true)
        }
        .font(.body.weight(isHighlighted ? .semibold : .regular))
        .foregroundStyle(isHighlighted ? Color.proAccent : .primary)
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text(title))
        .accessibilityValue(accessibilityValue(free: free, freeIncluded: freeIncluded, pro: pro))
    }

    @ViewBuilder
    private func cell(_ text: String?, included: Bool) -> some View {
        Group {
            if let text {
                Text(text).multilineTextAlignment(.center)
            } else if included {
                Image(systemName: "checkmark")
                    .font(.body.weight(.bold))
                    .foregroundStyle(Color.proAccent)
            } else {
                Text(verbatim: "–").foregroundStyle(.secondary)
            }
        }
        .frame(minWidth: 56)
    }

    private func accessibilityValue(free: String?, freeIncluded: Bool, pro: String?) -> String {
        if let free, let pro {
            return String(localized: "무료: \(free). Pro: \(pro).", comment: "Paywall comparison row for VoiceOver")
        }
        return freeIncluded ? String(localized: "무료로 포함") : String(localized: "Pro 전용")
    }

    // MARK: 요금제

    @ViewBuilder
    private var plans: some View {
        let yearly = store.product(ProProduct.yearly)
        let lifetime = store.product(ProProduct.lifetime)
        if yearly == nil && lifetime == nil {
            plansStatus
        } else {
            VStack(alignment: .leading, spacing: 14) {
                LeeoTermPicker(term: Binding(get: { term }, set: { term = $0; shortPlanID = nil }),
                               yearly: yearly, lifetime: lifetime)
                    .opacity(shortPlanID == nil ? 1 : 0.5)
                shortPlans
                buyButton
            }
        }
    }

    /// 주 · 월 구독. 연 구독이 기본이라 펼쳐야 보인다. 불러온 상품만 줄이 선다.
    @ViewBuilder
    private var shortPlans: some View {
        let short = [store.product(ProProduct.monthly), store.product(ProProduct.weekly)].compactMap { $0 }
        if !short.isEmpty {
            DisclosureGroup("주간 · 월간 요금제 보기") {
                VStack(spacing: 4) {
                    ForEach(short, id: \.id) { shortPlanRow($0) }
                }
                .padding(.top, 6)
            }
            .font(.body)
            .tint(Color.proAccent)
        }
    }

    private func shortPlanRow(_ product: Product) -> some View {
        let selected = shortPlanID == product.id
        let title = product.id == ProProduct.weekly
            ? String(localized: "주간 · \(product.displayPrice) / 주", comment: "Paywall: weekly plan row. %@ = price")
            : String(localized: "월간 · \(product.displayPrice) / 월", comment: "Paywall: monthly plan row. %@ = price")
        return Button {
            shortPlanID = selected ? nil : product.id
        } label: {
            HStack {
                Text(title).foregroundStyle(.primary)
                Spacer()
                Image(systemName: selected ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(selected ? Color.proAccent : .secondary)
                    .accessibilityHidden(true)
            }
            .frame(minHeight: 44)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(selected ? .isSelected : [])
    }

    /// 지금 고른 상품.
    private var chosen: Product? {
        if let shortPlanID { return store.product(shortPlanID) }
        return store.product(term == .yearly ? ProProduct.yearly : ProProduct.lifetime)
    }

    private var buyTitle: String {
        switch shortPlanID {
        case ProProduct.weekly?:  String(localized: "주간 구독 시작하기")
        case ProProduct.monthly?: String(localized: "월간 구독 시작하기")
        default: term == .yearly ? String(localized: "연 구독 시작하기") : String(localized: "평생으로 사기")
        }
    }

    private var buyButton: some View {
        Button {
            guard let chosen else { return }
            Task {
                await store.purchase(chosen, using: purchaseAction)
                if store.hasPro { dismiss() }
            }
        } label: {
            Group {
                if store.isWorking {
                    ProgressView().tint(.white)
                } else {
                    Text(buyTitle)
                }
            }
            .font(.body.weight(.semibold))
            .frame(maxWidth: .infinity, minHeight: 50)
        }
        .buttonStyle(.borderedProminent)
        .tint(Color.proAccent)
        .disabled(store.isWorking || chosen == nil)
    }

    @ViewBuilder
    private var plansStatus: some View {
        if loadingProducts {
            HStack(spacing: 10) {
                ProgressView()
                Text("요금제를 불러오는 중…").font(.body).foregroundStyle(.secondary)
            }
        } else {
            // 한 번 실패하면 죽은 단추로 남지 않게, 그 자리에서 다시 청한다.
            VStack(alignment: .leading, spacing: 10) {
                Text("요금제를 불러오지 못했어요. 인터넷 연결을 확인하고 다시 시도해 주세요.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                Button {
                    Task { await loadPlans() }
                } label: {
                    Label("다시 시도", systemImage: "arrow.clockwise").font(.body.weight(.semibold))
                }
                .buttonStyle(.bordered)
                .tint(Color.proAccent)
            }
        }
    }

    /// 첫 조회가 비어 오면 한 번 더 청한다. 샌드박스(심사 환경)는 첫 조회가 빈손으로 오는 일이 잦다.
    private func loadPlans() async {
        loadingProducts = true
        await store.loadProducts()
        if store.products.isEmpty {
            try? await Task.sleep(for: .seconds(1.5))
            await store.loadProducts()
        }
        loadingProducts = false
    }

    // MARK: 약관 (구독을 파는 앱의 심사 필수 항목)

    private var legal: some View {
        VStack(alignment: .leading, spacing: 10) {
            if store.products.contains(where: { $0.subscription != nil }) {
                Text("구독은 기간이 끝나기 24시간 전까지 해지하지 않으면 같은 값으로 자동 갱신되고, Apple 계정으로 결제됩니다. 연 구독을 처음 시작하면 첫 해는 할인된 값으로 결제되고, 그다음부터는 정가로 갱신됩니다. 구독 관리와 해지는 언제든 App Store 계정 설정에서 할 수 있어요. 평생은 한 번 사는 것이며 구독이 아니에요.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
            HStack(spacing: 20) {
                Link("이용약관", destination: BucketClimbSpec.termsURL)
                Link("개인정보 처리방침", destination: BucketClimbSpec.legal.privacyURL)
            }
            .font(.body)
            .tint(Color.proAccent)
        }
    }
}

// MARK: - 구독 졸업

/// 구독 중인 사람에게 평생으로 옮겨 갈 값을 보인다. 사면 구독 관리 화면으로 해지를 돕는다.
struct ProGraduationSheet: View {
    private var store: ProStore { .shared }

    var body: some View {
        LeeoGraduationOfferView(graduate: store.product(ProProduct.graduate)) {
            await store.refresh()
        }
        .task { if store.product(ProProduct.graduate) == nil { await store.loadProducts() } }
        .leeoStyle(.bucketClimb)
    }
}

// MARK: - 설정의 Pro 줄

/// 설정 ▸ Pro. 무료면 페이월로, 구독 중이면 구독 관리와 '평생으로 바꾸기', 복원은 늘.
struct ProSettingsSection: View {
    @State private var showingPaywall = false
    @State private var showingGraduation = false
    @State private var showingManage = false
    @State private var restoreMessage: String?

    private var store: ProStore { .shared }

    var body: some View {
        Section {
            if !store.hasPro {
                // 아직 살 수 있는 상품이 없으면 줄을 세우지 않는다 — 누르면 '불러오지 못했다' 만 보인다.
                if store.sellsPro {
                    Button { showingPaywall = true } label: {
                        Label("Pro 보기", systemImage: "sparkles")
                    }
                }
            } else if store.ownsLifetime {
                Label("평생 Pro", systemImage: "checkmark.seal.fill")
                    .foregroundStyle(.green)
            } else if store.subscription != nil {
                Label("Pro 사용 중", systemImage: "checkmark.seal.fill")
                    .foregroundStyle(.green)
                Button { showingManage = true } label: {
                    Label("구독 관리", systemImage: "creditcard")
                }
                Button { showingGraduation = true } label: {
                    Label(LeeoLadderText.switchToLifetimeEntry, systemImage: "graduationcap")
                }
            } else {
                // 가족 공유로 받은 사람.
                Label("Pro 사용 중", systemImage: "checkmark.seal.fill")
                    .foregroundStyle(.green)
            }
            Button {
                Task {
                    await store.restore()
                    restoreMessage = store.hasPro ? nil : store.failureMessage
                }
            } label: {
                Label("구매 복원", systemImage: "arrow.clockwise")
            }
            .disabled(store.isWorking)
        } header: {
            Text("꿈을 찾아서 Pro")
        } footer: {
            if let restoreMessage { Text(restoreMessage) }
        }
        .sheet(isPresented: $showingPaywall) { PaywallView() }
        .sheet(isPresented: $showingGraduation) { ProGraduationSheet() }
        .manageSubscriptionsSheet(isPresented: $showingManage)
    }
}

// MARK: - 첫 목표를 완료한 뒤 한 번

/// 첫 목표를 완료한 뒤 완료 탭 맨 위에 한 번 서는 작은 카드. 닫으면 다시 서지 않는다.
struct FirstDoneProCard: View {
    @AppStorage("pro.firstTreasureCardDismissed") private var dismissed = false
    @State private var showingPaywall = false

    private var store: ProStore { .shared }

    var body: some View {
        if !dismissed, !store.isPro {
            HStack(alignment: .top, spacing: 12) {
                Image(systemName: "sparkles")
                    .font(.title2)
                    .foregroundStyle(Color.proAccent)
                    .accessibilityHidden(true)
                VStack(alignment: .leading, spacing: 8) {
                    Text("첫 목표를 완료했습니다")
                        .font(.headline)
                    Text("Pro에서는 목표를 개수 제한 없이 둘 수 있습니다.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .fixedSize(horizontal: false, vertical: true)
                    Button("Pro 보기") { showingPaywall = true }
                        .font(.body.weight(.semibold))
                        .tint(Color.proAccent)
                }
                Spacer(minLength: 0)
                Button {
                    withAnimation { dismissed = true }
                } label: {
                    Image(systemName: "xmark")
                        .font(.body.weight(.semibold))
                        .foregroundStyle(.secondary)
                        .frame(width: 44, height: 44)
                }
                .accessibilityLabel(Text("닫기"))
            }
            .padding(16)
            .background(Color.cardBackgroundAdaptive, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            .sheet(isPresented: $showingPaywall, onDismiss: { dismissed = true }) {
                PaywallView(highlight: .goals)
            }
        }
    }
}

// MARK: - 색

extension Color {
    /// Pro 화면의 강조색.
    static let proAccent = Color.purple
}

extension LeeoStyle {
    /// LeeoKit 의 연 구독 / 평생 고르기 · 구독 졸업이 앱과 같은 색으로 선다.
    static let bucketClimb = LeeoStyle(accent: .proAccent,
                                       bg: Color(UIColor.systemGroupedBackground),
                                       surface: Color(UIColor.secondarySystemGroupedBackground),
                                       surfaceAlt: Color(UIColor.secondarySystemGroupedBackground))
}
