//
//  GoalDetailView.swift
//  BucketClimb
//
//  목표 하나의 화면: 단계와 기록. 기록 시트도 여기 있다.
//

import SwiftUI
import PhotosUI

// MARK: - 빈칸

/// 빈칸 한 줄: 질문과 그 답을 적는 칸.
struct BlankRow: View {
    let question: String
    let save: (String) -> Void
    @State private var text: String
    @FocusState private var focused: Bool

    init(question: String, answer: String, save: @escaping (String) -> Void) {
        self.question = question
        self.save = save
        _text = State(initialValue: answer)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(question)
                .font(.body)
                .foregroundStyle(.secondary)
            TextField("적어 보세요", text: $text, axis: .vertical)
                .font(.body)
                .focused($focused)
                .submitLabel(.done)
                .onSubmit { focused = false }
                .onChange(of: focused) { _, now in
                    if !now { save(text) }
                }
                .onDisappear { save(text) }
        }
        .padding(.vertical, 2)
    }
}

/// 지금 묻는 질문 하나. 답을 적으면 저장하고 다음 질문으로 넘어간다.
struct QuestionRow: View {
    let question: String
    let save: (String) -> Void
    let skip: () -> Void
    @State private var text = ""
    @FocusState private var focused: Bool

    private var trimmed: String { text.trimmingCharacters(in: .whitespacesAndNewlines) }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(question)
                .font(.body.weight(.semibold))
                .fixedSize(horizontal: false, vertical: true)
            TextField("적어 보세요", text: $text, axis: .vertical)
                .font(.body)
                .focused($focused)
                .submitLabel(.done)
                .onSubmit(commit)
            AdaptiveStack(spacing: 12) {
                Button("저장", action: commit)
                    .disabled(trimmed.isEmpty)
                Button("건너뛰기", action: skip)
                    .tint(.secondary)
            }
            .font(.body.weight(.semibold))
            .buttonStyle(.bordered)
        }
        .padding(.vertical, 6)
    }

    private func commit() {
        guard !trimmed.isEmpty else { return }
        focused = false
        save(trimmed)
    }
}

// MARK: - 목표

struct GoalDetailView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    @Environment(\.dismiss) private var dismiss

    @State private var newStep = ""
    @State private var suggesting = false
    @State private var renaming = false
    @State private var titleDraft = ""
    /// 이름을 고치는 중인 단계.
    @State private var renamingStep: Milestone?
    @State private var stepDraft = ""
    @State private var confirmingStop = false
    @State private var confirmingDelete = false
    @State private var addingRecord = false
    @State private var paywall: ProFeature?
    /// 이번에 '건너뛰기'로 넘긴 빈칸. 화면을 다시 열면 다시 묻는다.
    @State private var skippedBlanks: Set<GoalBlank> = []

    var body: some View {
        List {
            header
            blanksSection
            stepsSection
            recordsSection
            stateSection
        }
        .navigationTitle(item.title.localizedBucket)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .primaryAction) { menu }
        }
        .alert("제목 수정", isPresented: $renaming) {
            TextField("제목", text: $titleDraft)
            Button("저장") {
                let title = titleDraft.trimmingCharacters(in: .whitespacesAndNewlines)
                if !title.isEmpty { viewModel.rename(item, to: title) }
            }
            Button("취소", role: .cancel) { }
        }
        .alert("단계 이름", isPresented: Binding(get: { renamingStep != nil }, set: { if !$0 { renamingStep = nil } }),
               presenting: renamingStep) { step in
            TextField("단계 이름", text: $stepDraft)
            Button("저장") {
                let title = stepDraft.trimmingCharacters(in: .whitespacesAndNewlines)
                if !title.isEmpty { viewModel.renameStep(item, step.id, to: title) }
            }
            Button("취소", role: .cancel) { }
        }
        .confirmationDialog("이 목표를 그만둘까요?", isPresented: $confirmingStop, titleVisibility: .visible) {
            Button("그만두기", role: .destructive) {
                viewModel.stop(item)
                dismiss()
            }
            Button("취소", role: .cancel) { }
        }
        .confirmationDialog("이 목표를 삭제할까요?", isPresented: $confirmingDelete, titleVisibility: .visible) {
            Button("삭제", role: .destructive) {
                viewModel.delete(item)
                dismiss()
            }
            Button("취소", role: .cancel) { }
        } message: {
            Text("단계와 기록이 함께 지워집니다.")
        }
        .sheet(isPresented: $addingRecord) { RecordSheet(item: item) }
        .sheet(item: $paywall) { PaywallView(highlight: $0) }
    }

    // MARK: 머리

    private var header: some View {
        Section {
            VStack(alignment: .leading, spacing: 10) {
                Text(item.title.localizedBucket)
                    .font(.title2.bold())
                if !item.milestones.isEmpty {
                    AdaptiveStack(spacing: 12) {
                        ProgressView(value: item.progress)
                        Text("\(item.doneStepCount)/\(item.milestones.count) 단계")
                            .font(.body)
                            .foregroundStyle(.secondary)
                            .monospacedDigit()
                    }
                }
            }
            .padding(.vertical, 4)
        }
    }

    // MARK: 구체화

    /// 지금 물을 빈칸 하나: 아직 비어 있고 이번에 건너뛰지 않은 첫 빈칸.
    private var askingBlank: GoalBlank? {
        GoalBlank.allCases.first { item.answer($0).isEmpty && !skippedBlanks.contains($0) }
    }

    /// 빈칸을 한꺼번에 늘어놓지 않는다. 이미 적은 답과, 다음 질문 하나만 보인다.
    @ViewBuilder
    private var blanksSection: some View {
        let answered = GoalBlank.allCases.filter { !item.answer($0).isEmpty }
        let asking = askingBlank
        if !answered.isEmpty || asking != nil {
            Section {
                ForEach(answered) { blank in
                    BlankRow(question: blank.question, answer: item.answer(blank)) {
                        viewModel.setAnswer(item, blank, $0)
                    }
                }
                if let asking {
                    QuestionRow(question: asking.question) { text in
                        withAnimation { viewModel.setAnswer(item, asking, text) }
                    } skip: {
                        withAnimation { _ = skippedBlanks.insert(asking) }
                    }
                    .id(asking)
                }
            }
        }
    }

    // MARK: 단계

    private var stepsSection: some View {
        Section {
            ForEach(item.milestones) { step in
                StepRow(step: step) {
                    withAnimation { viewModel.toggleStep(item, step.id) }
                }
                .contextMenu {
                    Button {
                        stepDraft = step.title.localizedBucket
                        renamingStep = step
                    } label: {
                        Label("제목 수정", systemImage: "pencil")
                    }
                }
            }
            .onDelete { viewModel.deleteSteps(item, at: $0) }
            .onMove { viewModel.moveSteps(item, from: $0, to: $1) }

            HStack(spacing: 12) {
                Image(systemName: "plus")
                    .foregroundStyle(.secondary)
                    .accessibilityHidden(true)
                TextField("단계 추가", text: $newStep)
                    .submitLabel(.done)
                    .onSubmit(addStep)
            }

            if item.milestones.isEmpty, GoalPlanner.isAvailable {
                Button {
                    suggesting = true
                    Task {
                        let plan = await GoalPlanner.plan(item.title.localizedBucket)
                        if !plan.steps.isEmpty { viewModel.addSteps(item, titles: plan.steps) }
                        suggesting = false
                    }
                } label: {
                    HStack {
                        Label("단계 제안 받기", systemImage: "wand.and.stars")
                        if suggesting {
                            Spacer()
                            ProgressView()
                        }
                    }
                }
                .disabled(suggesting)
            }
        } header: {
            Text("단계")
        } footer: {
            if item.milestones.count > 1 {
                Text("길게 눌러 끌면 순서를 바꿀 수 있습니다.")
                    .font(.body)
            }
        }
    }

    private func addStep() {
        let title = newStep.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !title.isEmpty else { return }
        viewModel.addStep(item, title: title)
        newStep = ""
    }

    // MARK: 기록

    private var recordsSection: some View {
        let timeline = item.timeline
        return Section {
            ForEach(timeline.prefix(3)) { RecordRow(record: $0) }

            if timeline.count > 3 {
                NavigationLink {
                    RecordsView(item: item)
                } label: {
                    Text("기록 \(timeline.count)개 모두 보기")
                }
            }

            Button {
                addingRecord = true
            } label: {
                Label("기록 추가", systemImage: "square.and.pencil")
            }
        } header: {
            Text("기록")
        }
    }

    // MARK: 상태

    @ViewBuilder
    private var stateSection: some View {
        Section {
            if item.status == .completed {
                if let date = item.dateCompleted {
                    LabeledContent(item.isAbandoned ? "그만둔 날" : "완료한 날",
                                   value: date.formatted(date: .abbreviated, time: .omitted))
                        .font(.body)
                }
                Button {
                    if ProStore.shared.canTakeAnotherGoal {
                        viewModel.resume(item)
                    } else {
                        paywall = .goals
                    }
                } label: {
                    Label("다시 시작", systemImage: "arrow.counterclockwise")
                }
            } else {
                Button {
                    viewModel.complete(item)
                    dismiss()
                } label: {
                    Label("완료 처리", systemImage: "checkmark.circle.fill")
                        .font(.body.weight(.semibold))
                }
            }
        }
    }

    // MARK: 메뉴

    private var menu: some View {
        Menu {
            Button {
                titleDraft = item.title.localizedBucket
                renaming = true
            } label: {
                Label("제목 수정", systemImage: "pencil")
            }

            Divider()

            if item.status != .completed {
                Button(role: .destructive) {
                    confirmingStop = true
                } label: {
                    Label("그만두기", systemImage: "stop.circle")
                }
            }
            Button(role: .destructive) {
                confirmingDelete = true
            } label: {
                Label("삭제", systemImage: "trash")
            }
        } label: {
            Label("더 보기", systemImage: "ellipsis.circle")
        }
    }
}

// MARK: - 단계 한 줄

struct StepRow: View {
    let step: Milestone
    let toggle: () -> Void

    var body: some View {
        Button(action: toggle) {
            HStack(alignment: .firstTextBaseline, spacing: 12) {
                Image(systemName: step.isCompleted ? "checkmark.circle.fill" : "circle")
                    .font(.title2)
                    .foregroundStyle(step.isCompleted ? Color.accentColor : .secondary)
                    .accessibilityHidden(true)
                Text(step.title.localizedBucket)
                    .font(.body)
                    .strikethrough(step.isCompleted)
                    .foregroundStyle(step.isCompleted ? .secondary : .primary)
                    .multilineTextAlignment(.leading)
            }
            .frame(maxWidth: .infinity, minHeight: 36, alignment: .leading)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityAddTraits(step.isCompleted ? .isSelected : [])
    }
}

// MARK: - 기록

/// 기록 한 건: 날짜와 단계, 글, 사진.
struct RecordRow: View {
    let record: GoalRecord
    var showsStep = true
    @State private var opened: OpenedPhoto?

    struct OpenedPhoto: Identifiable {
        let id: String
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if !head.isEmpty {
                Text(verbatim: head)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
            if !record.text.isEmpty {
                Text(record.text.localizedBucket)
                    .font(.body)
            }
            if !record.photos.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(record.photos, id: \.self) { name in
                            if let image = GoalPhotos.load(name) {
                                Button {
                                    opened = OpenedPhoto(id: name)
                                } label: {
                                    Image(uiImage: image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 88, height: 88)
                                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                }
                                .buttonStyle(.plain)
                                .accessibilityLabel(Text("사진 보기"))
                            }
                        }
                    }
                }
            }
        }
        .padding(.vertical, 4)
        .fullScreenCover(item: $opened) { PhotoView(name: $0.id) }
    }

    private var head: String {
        [record.date?.formatted(date: .abbreviated, time: .omitted),
         showsStep ? record.step?.localizedBucket : nil]
            .compactMap { $0 }.joined(separator: " · ")
    }
}

/// 사진 한 장을 화면 가득.
struct PhotoView: View {
    let name: String
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                if let image = GoalPhotos.load(name) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button { dismiss() } label: { Label("닫기", systemImage: "xmark") }
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
        }
        .preferredColorScheme(.dark)
    }
}

/// 목표의 모든 기록.
struct RecordsView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    @State private var addingRecord = false

    var body: some View {
        List {
            ForEach(item.timeline) { record in
                RecordRow(record: record)
                    .swipeActions {
                        if let id = record.recordID {
                            Button("삭제", systemImage: "trash") { viewModel.deleteRecord(item, id) }
                                .tint(.red)
                        }
                    }
            }
        }
        .navigationTitle("기록")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button { addingRecord = true } label: { Label("기록 추가", systemImage: "square.and.pencil") }
            }
        }
        .sheet(isPresented: $addingRecord) { RecordSheet(item: item) }
    }
}

/// 기록 추가: 글과 사진.
struct RecordSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @ObservedObject var item: BucketListItem
    @Environment(\.dismiss) private var dismiss

    @State private var text = ""
    @State private var picks: [PhotosPickerItem] = []
    @State private var photos: [Data] = []
    @State private var saving = false

    private var isValid: Bool {
        !text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty || !photos.isEmpty
    }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("무엇을 했나요?", text: $text, axis: .vertical)
                        .lineLimit(3...10)
                }

                Section {
                    if !photos.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 8) {
                                ForEach(Array(photos.enumerated()), id: \.offset) { _, data in
                                    if let image = UIImage(data: data) {
                                        Image(uiImage: image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 88, height: 88)
                                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                                    }
                                }
                            }
                        }
                        .accessibilityLabel(Text("고른 사진 \(photos.count)장"))
                    }
                    PhotosPicker(selection: $picks, maxSelectionCount: 5, matching: .images) {
                        Label(photos.isEmpty ? "사진 추가" : "사진 다시 고르기", systemImage: "photo")
                    }
                }
            }
            .navigationTitle("기록 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("저장") {
                        let names = photos.compactMap { GoalPhotos.save($0, for: item.id) }
                        viewModel.addRecord(item, text: text.trimmingCharacters(in: .whitespacesAndNewlines), photos: names)
                        dismiss()
                    }
                    .disabled(!isValid || saving)
                }
            }
            .onChange(of: picks) { _, picks in
                saving = true
                Task {
                    var loaded: [Data] = []
                    for pick in picks {
                        if let data = try? await pick.loadTransferable(type: Data.self) { loaded.append(data) }
                    }
                    photos = loaded
                    saving = false
                }
            }
        }
    }
}
