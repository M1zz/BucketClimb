//
//  AddGoalSheet.swift
//  BucketClimb
//
//  목표를 새로 만드는 두 자리: 목표 추가 시트와, 첫 실행 때 첫 목표 하나를 적는 화면.
//

import SwiftUI

// MARK: - 목표 추가

struct AddGoalSheet: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @Environment(\.dismiss) private var dismiss

    @State private var title = ""
    /// 단계를 제안받으면 함께 오는 분류. 화면에는 보이지 않고 저장만 한다.
    @State private var category: BucketCategory = .experience
    @State private var steps: [StepDraft] = [StepDraft()]
    @State private var suggesting = false
    @FocusState private var titleFocused: Bool

    struct StepDraft: Identifiable {
        let id = UUID()
        var text = ""
    }

    private var trimmedTitle: String { title.trimmingCharacters(in: .whitespacesAndNewlines) }

    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("이루고 싶은 것", text: $title, axis: .vertical)
                        .focused($titleFocused)
                }

                Section {
                    ForEach($steps) { $step in
                        TextField("단계", text: $step.text)
                    }
                    .onDelete { steps.remove(atOffsets: $0) }
                    .onMove { steps.move(fromOffsets: $0, toOffset: $1) }

                    Button {
                        steps.append(StepDraft())
                    } label: {
                        Label("단계 추가", systemImage: "plus")
                    }

                    if GoalPlanner.isAvailable {
                        Button {
                            suggest()
                        } label: {
                            HStack {
                                Label("단계 제안 받기", systemImage: "wand.and.stars")
                                if suggesting {
                                    Spacer()
                                    ProgressView()
                                }
                            }
                        }
                        .disabled(trimmedTitle.isEmpty || suggesting)
                    }
                } header: {
                    Text("단계")
                } footer: {
                    Text("단계는 나중에 추가하거나 고칠 수 있습니다.")
                        .font(.body)
                }
            }
            .navigationTitle("목표 추가")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("취소") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("추가") {
                        add()
                        dismiss()
                    }
                    .disabled(trimmedTitle.isEmpty)
                }
            }
            .onAppear { titleFocused = true }
        }
    }

    private var stepTitles: [String] {
        steps.map { $0.text.trimmingCharacters(in: .whitespacesAndNewlines) }.filter { !$0.isEmpty }
    }

    private func add() {
        viewModel.addGoal(title: trimmedTitle, category: category, steps: stepTitles)
    }

    /// 기기 안 모델에게 첫 단계들을 받아 빈칸을 채운다. 이미 적은 단계는 지우지 않는다.
    private func suggest() {
        suggesting = true
        Task {
            let plan = await GoalPlanner.plan(trimmedTitle)
            if !plan.steps.isEmpty {
                category = plan.category
                steps = (stepTitles + plan.steps).map { StepDraft(text: $0) }
            }
            suggesting = false
        }
    }
}

// MARK: - 첫 실행

/// 첫 실행 화면. 설명 없이 첫 목표 하나를 적는다. 적으면 (가능한 기기에서는) 단계를 제안받아 바로 진행 중으로 들어간다.
struct FirstGoalView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var title = ""
    @State private var working = false
    @FocusState private var focused: Bool

    private var trimmedTitle: String { title.trimmingCharacters(in: .whitespacesAndNewlines) }

    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            Spacer()

            VStack(alignment: .leading, spacing: 12) {
                Text("이루고 싶은 것 하나를 적어 보세요")
                    .font(.largeTitle.bold())
                    .fixedSize(horizontal: false, vertical: true)
                    .accessibilityAddTraits(.isHeader)
                Text("목표를 단계로 나누고, 하나씩 체크하며 기록합니다.")
                    .font(.body)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            TextField("예: 하프 마라톤 완주", text: $title, axis: .vertical)
                .font(.title3)
                .focused($focused)
                .submitLabel(.done)
                .padding(16)
                .background(Color(UIColor.secondarySystemBackground), in: RoundedRectangle(cornerRadius: 14, style: .continuous))

            Button {
                start()
            } label: {
                Group {
                    if working {
                        ProgressView().tint(.white)
                    } else {
                        Text("시작")
                    }
                }
                .font(.body.weight(.semibold))
                .frame(maxWidth: .infinity, minHeight: 50)
            }
            .buttonStyle(.borderedProminent)
            .disabled(trimmedTitle.isEmpty || working)

            Button("건너뛰기") {
                viewModel.completeOnboarding()
            }
            .font(.body)
            .frame(maxWidth: .infinity, minHeight: 44)
            .disabled(working)

            Spacer()
            Spacer()
        }
        .padding(24)
        .frame(maxWidth: 560)
        .frame(maxWidth: .infinity)
        .onAppear { focused = true }
    }

    private func start() {
        let goal = trimmedTitle
        working = true
        focused = false
        Task {
            let plan = await GoalPlanner.plan(goal)
            viewModel.addGoal(title: goal, category: plan.category, steps: plan.steps, start: true)
            viewModel.completeOnboarding()
            working = false
        }
    }
}
