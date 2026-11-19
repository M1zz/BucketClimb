//
//  GoalViews.swift
//  BucketClimb
//
//  첫 화면(목표 목록)과 완료한 목표 화면. 그리고 기록 사진 파일.
//

import SwiftUI
import LeeoKit

// MARK: - 목표 목록

/// 앱의 첫 화면. 완료하지 않은 목표마다 한 줄: 제목, 진행, 다음 단계 하나. 다음 단계는 그 자리에서 체크한다.
struct GoalsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var showingSettings = false
    @State private var deleting: BucketListItem?
    /// 스크린샷용(-ScreenshotDetail · -ScreenshotDone)으로만 쓴다. 화면의 이동은 모두 NavigationLink 가 한다.
    @State private var path = NavigationPath()

    var body: some View {
        let goals = viewModel.openGoals
        let doneCount = viewModel.doneGoals.count + viewModel.stoppedGoals.count

        NavigationStack(path: $path) {
            List {
                Section {
                    ForEach(goals) { item in
                        GoalRow(item: item)
                            .swipeActions(edge: .trailing) {
                                Button("삭제", systemImage: "trash") { deleting = item }
                                    .tint(.red)
                                Button("그만두기", systemImage: "archivebox") {
                                    withAnimation { viewModel.stop(item) }
                                }
                                .tint(.gray)
                            }
                    }
                } footer: {
                    if !ProStore.shared.isPro, !goals.isEmpty {
                        Text("무료로는 목표를 \(ProStore.freeGoalLimit)개까지 둘 수 있습니다. 지금 \(goals.count)개입니다.")
                            .font(.body)
                    }
                }

                if doneCount > 0 {
                    Section {
                        NavigationLink {
                            DoneGoalsView()
                        } label: {
                            LabeledContent("완료한 목표", value: viewModel.doneGoals.count.formatted())
                                .font(.body)
                        }
                    }
                }
            }
            .overlay {
                if goals.isEmpty, doneCount == 0 {
                    ContentUnavailableView {
                        Label("목표가 없습니다", systemImage: "checklist")
                    } description: {
                        Text("이루고 싶은 것을 추가해 보세요.")
                    } actions: {
                        AddGoalButton { Text("목표 추가") }
                            .buttonStyle(.borderedProminent)
                    }
                }
            }
            .navigationTitle("목표")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button { showingSettings = true } label: {
                        Label("설정", systemImage: "gearshape")
                    }
                }
                ToolbarItem(placement: .primaryAction) {
                    AddGoalButton { Label("목표 추가", systemImage: "plus") }
                }
            }
            .sheet(isPresented: $showingSettings) { SettingsView() }
            .confirmationDialog("이 목표를 삭제할까요?", isPresented: Binding(get: { deleting != nil }, set: { if !$0 { deleting = nil } }),
                                titleVisibility: .visible, presenting: deleting) { item in
                Button("삭제", role: .destructive) { viewModel.delete(item) }
                Button("취소", role: .cancel) { }
            } message: { _ in
                Text("단계와 기록이 함께 지워집니다.")
            }
            .navigationDestination(for: UUID.self) { id in
                if let item = viewModel.bucketItems.first(where: { $0.id == id }) {
                    GoalDetailView(item: item)
                }
            }
            .navigationDestination(for: String.self) { _ in DoneGoalsView() }
            #if DEBUG
            .onAppear {
                guard path.isEmpty else { return }
                if ScreenshotSeed.opensDetail, let first = goals.first { path.append(first.id) }
                if ScreenshotSeed.opensDone { path.append("done") }
            }
            #endif
        }
    }
}

/// 목표 한 줄: 제목과 진행, 그 아래 다음 단계 하나.
struct GoalRow: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            NavigationLink {
                GoalDetailView(item: item)
            } label: {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(alignment: .firstTextBaseline) {
                        Text(item.title.localizedBucket)
                            .font(.title3.weight(.semibold))
                        Spacer()
                        if !item.milestones.isEmpty {
                            Text(verbatim: "\(item.doneStepCount)/\(item.milestones.count)")
                                .font(.body)
                                .foregroundStyle(.secondary)
                                .monospacedDigit()
                                .accessibilityLabel(Text("\(item.doneStepCount)/\(item.milestones.count) 단계"))
                        }
                    }
                    if !item.milestones.isEmpty {
                        ProgressView(value: item.progress)
                    }
                }
            }

            nextStep

            if item.isStale { stalePrompt }
        }
        .padding(.vertical, 6)
    }

    /// 한 달 넘게 진행이 없으면 계속할지 그만둘지 묻는다. 그만둔 목표는 완료한 목표 화면에서 다시 시작할 수 있다.
    private var stalePrompt: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("한 달 넘게 진행이 없습니다. 계속할까요?")
                .font(.body)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
            HStack(spacing: 12) {
                Button("계속하기") {
                    withAnimation { viewModel.keep(item) }
                }
                Button("그만두기") {
                    withAnimation { viewModel.stop(item) }
                }
                .tint(.secondary)
            }
            .font(.body.weight(.semibold))
            .buttonStyle(.bordered)
        }
        .padding(.top, 4)
    }

    @ViewBuilder
    private var nextStep: some View {
        if let step = item.nextStep {
            Button {
                withAnimation { viewModel.toggleStep(item, step.id) }
            } label: {
                HStack(alignment: .firstTextBaseline, spacing: 10) {
                    Image(systemName: "circle")
                        .font(.title3)
                        .foregroundStyle(Color.accentColor)
                        .accessibilityHidden(true)
                    Text(step.title.localizedBucket)
                        .font(.body)
                        .foregroundStyle(.primary)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity, minHeight: 36, alignment: .leading)
                .contentShape(Rectangle())
            }
            .buttonStyle(.borderless)
            .accessibilityHint(Text("완료로 표시"))
        } else if item.milestones.isEmpty {
            Text("단계를 추가하세요")
                .font(.body)
                .foregroundStyle(.secondary)
        } else {
            Button("완료 처리") { viewModel.complete(item) }
                .font(.body.weight(.semibold))
                .buttonStyle(.borderless)
                .frame(minHeight: 36)
        }
    }
}

// MARK: - 완료한 목표

/// 완료한 목표와 그만둔 목표. 내비게이션 안에 놓인다.
struct DoneGoalsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var paywall: ProFeature?

    var body: some View {
        let done = viewModel.doneGoals
        let stopped = viewModel.stoppedGoals

        List {
            if !done.isEmpty {
                // 첫 목표를 완료한 뒤 한 번, 닫기 쉬운 작은 카드로 Pro 를 알린다 (Pro 면 서지 않는다).
                FirstDoneProCard()
                    .listRowInsets(EdgeInsets())
                    .listRowBackground(Color.clear)

                // 숫자가 쌓였을 때만, 드물게 응원을 부탁한다 (모달 아님). 이미 Pro 를 가진 사람에게만 한다.
                if ProStore.shared.hasPro {
                    LeeoTipAskSlot<BucketClimbSpec>(tipJar: BucketClimbSpec.tipJar,
                                                    reached: BucketClimbTipMoments.reached(in: viewModel))
                        .listRowInsets(EdgeInsets())
                        .listRowBackground(Color.clear)
                }

                Section {
                    ForEach(done) { row($0) }
                }
            }

            if !stopped.isEmpty {
                Section {
                    ForEach(stopped) { item in
                        row(item)
                            .swipeActions(edge: .leading) {
                                Button("다시 시작", systemImage: "arrow.counterclockwise") { resume(item) }
                                    .tint(.green)
                            }
                    }
                } header: {
                    Text("그만둔 목표")
                } footer: {
                    Text("그만둔 목표는 언제든 다시 시작할 수 있습니다.")
                        .font(.body)
                }
            }
        }
        .overlay {
            if done.isEmpty, stopped.isEmpty {
                ContentUnavailableView {
                    Label("완료한 목표가 없습니다", systemImage: "checkmark.circle")
                } description: {
                    Text("목표를 완료하면 여기에 모입니다.")
                }
            }
        }
        .navigationTitle("완료한 목표")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(item: $paywall) { PaywallView(highlight: $0) }
    }

    private func row(_ item: BucketListItem) -> some View {
        NavigationLink {
            GoalDetailView(item: item)
        } label: {
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title.localizedBucket)
                    .font(.body.weight(.semibold))
                if let date = item.dateCompleted {
                    Text(date.formatted(date: .abbreviated, time: .omitted))
                        .font(.body)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(.vertical, 2)
        }
    }

    private func resume(_ item: BucketListItem) {
        if ProStore.shared.canTakeAnotherGoal {
            viewModel.resume(item)
        } else {
            paywall = .goals
        }
    }
}

// MARK: - 목표 추가 단추

/// 목표 추가 시트를 여는 단추. 무료 한도가 찼으면 페이월을 연다.
struct AddGoalButton<Content: View>: View {
    @ViewBuilder var label: () -> Content
    @State private var adding = false
    @State private var paywall: ProFeature?

    var body: some View {
        Button {
            if ProStore.shared.canTakeAnotherGoal {
                adding = true
            } else {
                paywall = .goals
            }
        } label: {
            label()
        }
        .sheet(isPresented: $adding) { AddGoalSheet() }
        .sheet(item: $paywall) { PaywallView(highlight: $0) }
    }
}

// MARK: - 기록 사진

/// 기록에 붙인 사진 파일. Documents 에 파일 이름으로 둔다.
enum GoalPhotos {
    private static let cache = NSCache<NSString, UIImage>()
    private static var folder: URL { FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0] }

    static func load(_ name: String) -> UIImage? {
        guard !name.isEmpty else { return nil }
        if let cached = cache.object(forKey: name as NSString) { return cached }
        guard let image = UIImage(contentsOfFile: folder.appendingPathComponent(name).path) else { return nil }
        cache.setObject(image, forKey: name as NSString)
        return image
    }

    /// JPEG 로 저장하고 파일 이름을 돌려준다.
    static func save(_ data: Data, for goalID: UUID) -> String? {
        guard let image = UIImage(data: data), let jpeg = image.jpegData(compressionQuality: 0.7) else { return nil }
        let name = "\(goalID.uuidString)_\(UUID().uuidString).jpg"
        do {
            try jpeg.write(to: folder.appendingPathComponent(name))
            return name
        } catch {
            return nil
        }
    }

    static func delete(_ name: String) {
        let url = folder.appendingPathComponent(name)
        guard !name.isEmpty, FileManager.default.fileExists(atPath: url.path) else { return }
        cache.removeObject(forKey: name as NSString)
        try? FileManager.default.removeItem(at: url)
    }
}

// MARK: - 색

extension Color {
    static var cardBackgroundAdaptive: Color {
        Color(UIColor.secondarySystemGroupedBackground)
    }
}
