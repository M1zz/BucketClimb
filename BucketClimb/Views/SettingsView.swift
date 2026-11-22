//
//  SettingsView.swift
//  BucketClimb
//
//  설정: Pro, 기록 내보내기 · 백업, 지원.
//

import SwiftUI
import LeeoKit

struct SettingsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var reminders = GoalReminders.isOn
    /// 알림을 켜려 했지만 기기에서 허락받지 못했다.
    @State private var remindersDenied = false

    private var version: String {
        Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? ""
    }

    var body: some View {
        NavigationStack {
            List {
                Section {
                    MochimoMoveCard()
                }

                ProSettingsSection()

                Section {
                    // 목표 · 단계 · 기록을 글로 내보낸다. 기본 내보내기라 잠그지 않는다.
                    ShareLink(item: viewModel.exportText) {
                        Label("기록 내보내기", systemImage: "square.and.arrow.up")
                    }
                    .disabled(viewModel.bucketItems.isEmpty)

                    // 백업 및 복원 (LeeoKit 금고)
                    NavigationLink { LeeoVaultView(appName: BucketClimbSpec.displayName) } label: {
                        Label(LeeoVaultText.entry, systemImage: "externaldrive.badge.timemachine")
                    }
                } header: {
                    Text("데이터")
                } footer: {
                    Text("목표 · 단계 · 기록을 글로 내보냅니다.")
                        .font(.body)
                }

                Section {
                    Toggle("진행 없는 목표 알림", isOn: $reminders)
                        .onChange(of: reminders) { _, on in
                            guard on != GoalReminders.isOn else { return }
                            if on {
                                Task {
                                    let allowed = await GoalReminders.turnOn()
                                    reminders = allowed
                                    remindersDenied = !allowed
                                    GoalReminders.sync(viewModel.bucketItems)
                                }
                            } else {
                                remindersDenied = false
                                GoalReminders.turnOff()
                            }
                        }
                } footer: {
                    Text(remindersDenied ? "알림이 막혀 있습니다. 설정 앱에서 알림을 허용해 주세요."
                                         : "한 달 동안 진행이 없는 목표를 알려 줍니다.")
                        .font(.body)
                }

                Section {
                    Button(action: sendFeedbackEmail) {
                        Label("피드백 보내기", systemImage: "envelope")
                    }
                    Button(action: openInstagram) {
                        Label("인스타그램 DM", systemImage: "paperplane")
                    }
                    ShareLink(item: appStoreURL) {
                        Label("앱 공유하기", systemImage: "square.and.arrow.up")
                    }
                    Button(action: rateApp) {
                        Label("앱 평가하기", systemImage: "star")
                    }
                    // 개발자 응원하기 — 판매 중인 팁이 있어야 선다.
                    LeeoTipJarLink<BucketClimbSpec>(tipJar: BucketClimbSpec.tipJar)
                } header: {
                    Text("지원")
                }

                Section {
                    LabeledContent("버전", value: version)
                } header: {
                    Text("앱 정보")
                }
            }
            .font(.body)
            .navigationTitle("설정")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("완료") { dismiss() }
                }
            }
        }
    }

    // MARK: - 지원

    private let appStoreURL = URL(string: "https://apps.apple.com/app/id6740034706")!

    private func sendFeedbackEmail() {
        let subject = String(localized: "[BucketClimb] 피드백")
        let body = "\n\n---\n"
            + String(localized: "앱 버전: \(version)") + "\n"
            + String(localized: "기기: \(UIDevice.current.model)") + "\n"
            + String(localized: "iOS 버전: \(UIDevice.current.systemVersion)")

        var components = URLComponents()
        components.scheme = "mailto"
        components.path = BucketClimbSpec.developerEmail
        components.queryItems = [URLQueryItem(name: "subject", value: subject), URLQueryItem(name: "body", value: body)]
        if let url = components.url {
            UIApplication.shared.open(url)
        }
    }

    private func openInstagram() {
        // 인스타 앱이 설치돼 있으면 유니버설 링크로 앱이 열린다.
        if let url = URL(string: "https://instagram.com/lee25_ios") {
            UIApplication.shared.open(url)
        }
    }

    private func rateApp() {
        if let url = URL(string: appStoreURL.absoluteString + "?action=write-review") {
            UIApplication.shared.open(url)
        }
    }
}
