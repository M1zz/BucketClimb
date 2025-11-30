import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.colorScheme) var colorScheme
    @State private var currentPage = 0

    private let totalPages = 5

    var body: some View {
        ZStack {
            // 배경
            backgroundColor
                .ignoresSafeArea()

            VStack(spacing: 0) {
                // 스킵 버튼
                HStack {
                    Spacer()
                    if currentPage < totalPages - 1 {
                        Button("건너뛰기") {
                            completeOnboarding()
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding()
                    }
                }

                // 페이지 콘텐츠
                TabView(selection: $currentPage) {
                    WelcomePageLight()
                        .tag(0)

                    DreamOceanPageLight()
                        .tag(1)

                    ForgePageLight()
                        .tag(2)

                    TreasurePageLight()
                        .tag(3)

                    StartPageLight()
                        .tag(4)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .animation(.easeInOut, value: currentPage)

                // 페이지 인디케이터 & 버튼
                VStack(spacing: 24) {
                    // 커스텀 페이지 인디케이터
                    HStack(spacing: 8) {
                        ForEach(0..<totalPages, id: \.self) { index in
                            Circle()
                                .fill(index == currentPage ? Color.accentColor : Color.gray.opacity(0.3))
                                .frame(width: index == currentPage ? 10 : 8, height: index == currentPage ? 10 : 8)
                                .animation(.spring(), value: currentPage)
                        }
                    }

                    // 다음/시작 버튼
                    Button {
                        if currentPage < totalPages - 1 {
                            withAnimation {
                                currentPage += 1
                            }
                        } else {
                            completeOnboarding()
                        }
                    } label: {
                        HStack(spacing: 8) {
                            Text(currentPage < totalPages - 1 ? "다음" : "시작하기")
                                .fontWeight(.semibold)

                            Image(systemName: currentPage < totalPages - 1 ? "arrow.right" : "sparkles")
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(
                            LinearGradient(
                                colors: [Color.orange, Color.orange.opacity(0.8)],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(16)
                        .shadow(color: Color.orange.opacity(0.3), radius: 8, y: 4)
                    }
                    .padding(.horizontal, 32)
                }
                .padding(.bottom, 50)
            }
        }
    }

    private var backgroundColor: Color {
        colorScheme == .dark ? Color(UIColor.systemBackground) : Color(UIColor.systemGray6)
    }

    private func completeOnboarding() {
        viewModel.completeOnboarding()
    }
}

// MARK: - Page 1: 환영 페이지
struct WelcomePageLight: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isAnimating = false

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            // 앱 아이콘/로고 영역
            ZStack {
                // 배경 원
                Circle()
                    .fill(Color.orange.opacity(0.1))
                    .frame(width: 180, height: 180)
                    .scaleEffect(isAnimating ? 1.1 : 1.0)

                Circle()
                    .fill(Color.orange.opacity(0.15))
                    .frame(width: 140, height: 140)

                // 보물상자 아이콘
                Image(systemName: "shippingbox.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color.orange, Color.orange.opacity(0.7)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }

            VStack(spacing: 12) {
                Text("내 창고")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.primary)

                Text("환영합니다")
                    .font(.title2)
                    .foregroundColor(.secondary)

                Text("당신의 꿈을 열쇠로 만들어\n보물상자를 열어보세요")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
                    .padding(.top, 8)
            }

            Spacer()
            Spacer()
        }
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                isAnimating = true
            }
        }
    }
}

// MARK: - Page 2: 꿈의 바다
struct DreamOceanPageLight: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var waveOffset: CGFloat = 0

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            // 아이콘 영역
            ZStack {
                // 물결 효과
                Circle()
                    .fill(Color.cyan.opacity(0.08))
                    .frame(width: 200, height: 200)

                Circle()
                    .fill(Color.cyan.opacity(0.12))
                    .frame(width: 150, height: 150)

                VStack(spacing: 4) {
                    // 상자 아이콘
                    Image(systemName: "shippingbox.fill")
                        .font(.system(size: 55))
                        .foregroundColor(Color(red: 0.6, green: 0.4, blue: 0.2))

                    // 물결
                    Image(systemName: "water.waves")
                        .font(.system(size: 28))
                        .foregroundColor(.cyan)
                        .offset(y: waveOffset * 3)
                }
            }
            .frame(height: 200)

            VStack(spacing: 16) {
                // 타이틀
                Label("꿈의 바다", systemImage: "water.waves")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.primary)

                Text("수많은 꿈들이 상자에 담겨\n바다 위를 떠다니고 있어요")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)

                // 설명 카드
                VStack(alignment: .leading, spacing: 14) {
                    FeatureRowLight(icon: "magnifyingglass", iconColor: .cyan, text: "마음에 드는 꿈 상자를 발견하세요")
                    FeatureRowLight(icon: "hand.tap", iconColor: .cyan, text: "상자를 탭해서 내 창고로 가져오세요")
                    FeatureRowLight(icon: "plus.circle", iconColor: .cyan, text: "나만의 꿈을 직접 만들 수도 있어요")
                }
                .padding(20)
                .background(cardBackground)
                .cornerRadius(16)
                .padding(.top, 4)
            }

            Spacer()
            Spacer()
        }
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                waveOffset = 1
            }
        }
    }

    private var cardBackground: Color {
        Color(UIColor.secondarySystemBackground)
    }
}

// MARK: - Page 3: 내 창고
struct ForgePageLight: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var hammerRotation: Double = 0

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            // 아이콘 영역
            ZStack {
                Circle()
                    .fill(Color.orange.opacity(0.1))
                    .frame(width: 180, height: 180)

                VStack(spacing: -5) {
                    // 망치
                    Image(systemName: "hammer.fill")
                        .font(.system(size: 40))
                        .foregroundColor(.orange)
                        .rotationEffect(.degrees(hammerRotation), anchor: .bottomTrailing)

                    // 열쇠
                    Image(systemName: "key.fill")
                        .font(.system(size: 55))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.orange, Color.yellow],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
            }
            .frame(height: 180)

            VStack(spacing: 16) {
                // 타이틀
                Label("내 창고", systemImage: "hammer.fill")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.primary)

                Text("꿈 상자를 열 열쇠를\n직접 만들어보세요")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)

                // 열쇠-톱니 설명
                VStack(spacing: 16) {
                    HStack(spacing: 14) {
                        ZStack {
                            Circle()
                                .fill(Color.orange.opacity(0.15))
                                .frame(width: 48, height: 48)
                            Image(systemName: "key.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.orange)
                        }

                        VStack(alignment: .leading, spacing: 3) {
                            Text("열쇠 = 꿈을 이루는 과정")
                                .font(.subheadline.bold())
                                .foregroundColor(.primary)
                            Text("각 꿈마다 고유한 열쇠가 필요해요")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }

                        Spacer()
                    }

                    Divider()

                    HStack(spacing: 14) {
                        ZStack {
                            Circle()
                                .fill(Color.purple.opacity(0.15))
                                .frame(width: 48, height: 48)
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.purple)
                        }

                        VStack(alignment: .leading, spacing: 3) {
                            Text("톱니 = 작은 단계들")
                                .font(.subheadline.bold())
                                .foregroundColor(.primary)
                            Text("질문에 답하며 톱니를 하나씩 완성해요")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }

                        Spacer()
                    }
                }
                .padding(20)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(16)
                .padding(.top, 4)
            }

            Spacer()
            Spacer()
        }
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 0.4).repeatForever(autoreverses: true)) {
                hammerRotation = -15
            }
        }
    }
}

// MARK: - Page 4: 보물창고
struct TreasurePageLight: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var shine = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            // 아이콘 영역
            ZStack {
                Circle()
                    .fill(Color.yellow.opacity(0.12))
                    .frame(width: 180, height: 180)

                // 열린 상자 + 보물
                VStack(spacing: -8) {
                    // 보물들
                    HStack(spacing: 6) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                        Image(systemName: "diamond.fill")
                            .foregroundColor(.cyan)
                    }
                    .font(.system(size: 22))
                    .offset(y: shine ? -8 : 0)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: shine)

                    Image(systemName: "shippingbox.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [Color.orange, Color.yellow],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                }
            }
            .frame(height: 180)

            VStack(spacing: 16) {
                // 타이틀
                Label("보물함", systemImage: "sparkles")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.primary)

                Text("열쇠가 완성되면\n상자를 열 수 있어요!")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)

                // 보물창고 설명
                VStack(alignment: .leading, spacing: 14) {
                    FeatureRowLight(icon: "checkmark.circle.fill", iconColor: .green, text: "모든 톱니를 완성하면 열쇠 완성!")
                    FeatureRowLight(icon: "gift.fill", iconColor: .orange, text: "열쇠로 상자를 열어 보물을 획득")
                    FeatureRowLight(icon: "trophy.fill", iconColor: .yellow, text: "이룬 꿈들이 보물창고에 쌓여요")
                }
                .padding(20)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(16)
                .padding(.top, 4)
            }

            Spacer()
            Spacer()
        }
        .padding()
        .onAppear {
            shine = true
        }
    }
}

// MARK: - Page 5: 시작
struct StartPageLight: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var pulse = false

    var body: some View {
        VStack(spacing: 28) {
            Spacer()

            // 전체 플로우 다이어그램
            HStack(spacing: 12) {
                FlowIconLight(icon: "water.waves", label: "꿈의 바다", color: .cyan)

                Image(systemName: "arrow.right")
                    .font(.caption)
                    .foregroundColor(.secondary)

                FlowIconLight(icon: "hammer.fill", label: "내 창고", color: .orange)

                Image(systemName: "arrow.right")
                    .font(.caption)
                    .foregroundColor(.secondary)

                FlowIconLight(icon: "sparkles", label: "보물함", color: .yellow)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(20)

            VStack(spacing: 12) {
                Text("준비되셨나요?")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.primary)

                Text("이제 당신만의 꿈을\n열쇠로 만들어볼 시간이에요")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4)
            }

            // 시작 카드
            VStack(spacing: 12) {
                Image(systemName: "hand.point.down.fill")
                    .font(.system(size: 36))
                    .foregroundColor(.orange)
                    .scaleEffect(pulse ? 1.1 : 1.0)
                    .animation(.easeInOut(duration: 0.8).repeatForever(autoreverses: true), value: pulse)

                Text("아래 '시작하기' 버튼을 눌러\n첫 번째 꿈을 찾아보세요")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(24)
            .frame(maxWidth: .infinity)
            .background(Color(UIColor.secondarySystemBackground))
            .cornerRadius(20)

            Spacer()
            Spacer()
        }
        .padding()
        .onAppear {
            pulse = true
        }
    }
}

// MARK: - Helper Views
struct FeatureRowLight: View {
    let icon: String
    let iconColor: Color
    let text: String

    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(iconColor)
                .frame(width: 24)

            Text(text)
                .font(.subheadline)
                .foregroundColor(.primary)

            Spacer()
        }
    }
}

struct FlowIconLight: View {
    let icon: String
    let label: String
    let color: Color

    var body: some View {
        VStack(spacing: 6) {
            ZStack {
                Circle()
                    .fill(color.opacity(0.15))
                    .frame(width: 50, height: 50)

                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(color)
            }

            Text(label)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
    }
}

// MARK: - Color Extension (hex 지원용)
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

#Preview {
    OnboardingView()
        .environmentObject(BucketListViewModel())
}

#Preview("Dark Mode") {
    OnboardingView()
        .environmentObject(BucketListViewModel())
        .preferredColorScheme(.dark)
}
