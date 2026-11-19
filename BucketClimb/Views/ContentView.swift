import SwiftUI
import LeeoKit

struct ContentView: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    /// Siri · Spotlight 에서 고른 목표
    @State private var siriGoal: BucketListItem?
    /// 구독 6개월째 · 갱신 7일 전에 한 번씩 '구독 졸업' 평생가를 제안한다.
    @State private var showingGraduation = false

    var body: some View {
        Group {
            if viewModel.hasCompletedOnboarding {
                // 화면은 하나다: 목표 목록. 펼친 아이폰 듀오에서는 완료한 목표가 결과 쪽 판에 선다.
                FoldSplitView {
                    GoalsView()
                } result: {
                    NavigationStack { DoneGoalsView() }
                        .environment(\.foldLayout, .single)
                }
            } else {
                // 첫 실행: 첫 목표 하나를 적는다.
                FirstGoalView()
                    // 펼친 아이폰 듀오에서는 고르는 쪽 판에만 선다.
                    .foldConfined()
            }
        }
        // Siri · Spotlight 에서 고른 목표를 시트로 연다
        .onChange(of: GoalRouter.shared.goalID, initial: true) { _, id in
            guard let id else { return }
            GoalRouter.shared.goalID = nil
            siriGoal = viewModel.bucketItems.first { $0.id == id }
        }
        .sheet(item: $siriGoal) { item in
            NavigationStack { GoalDetailView(item: item) }
                .environmentObject(viewModel)
        }
        .task(id: ProStore.shared.graduationIsDue) {
            guard ProStore.shared.graduationIsDue, viewModel.hasCompletedOnboarding else { return }
            ProStore.shared.markGraduationOffered()
            showingGraduation = true
        }
        .sheet(isPresented: $showingGraduation) { ProGraduationSheet() }
    }
}

#Preview {
    ContentView()
        .environmentObject(BucketListViewModel())
}
