#if DEBUG
import Foundation

/// 스토어 스크린샷용 예시 데이터. 디버그 빌드에서 `-ScreenshotSeed` 로 실행할 때만 쓰인다.
/// `-ScreenshotTab <번호>` 로 시작 탭, `-ScreenshotForge` 로 첫 꿈의 열쇠 화면을 연다.
enum ScreenshotSeed {
    static let arguments = ProcessInfo.processInfo.arguments
    static var isOn: Bool { arguments.contains("-ScreenshotSeed") }
    static var opensForge: Bool { arguments.contains("-ScreenshotForge") }
    static var tab: Int? {
        guard let i = arguments.firstIndex(of: "-ScreenshotTab"), i + 1 < arguments.count else { return nil }
        return Int(arguments[i + 1])
    }

    static func apply(to viewModel: BucketListViewModel) {
        let day: TimeInterval = 86_400
        func item(_ bucket: BucketItem, status: BucketStatus, done: Int, checked: Int = 0, daysAgo: Double) -> BucketListItem {
            let item = BucketListItem(title: bucket.title, category: bucket.category,
                                      thumbnail: bucket.thumbnail, backgroundImage: bucket.backgroundImage,
                                      location: bucket.location)
            item.status = status
            item.dateAdded = Date().addingTimeInterval(-daysAgo * day)
            item.milestones = bucket.milestones
            for i in item.milestones.indices where i < done {
                item.milestones[i].isCompleted = true
                item.milestones[i].completedDate = Date().addingTimeInterval(-Double(done - i) * 4 * day)
                for j in item.milestones[i].checklist.indices {
                    item.milestones[i].checklist[j].isCompleted = true
                    // 답 자리에는 그 단계의 설명(번역 표에 있는 문장)을 넣어 언어마다 그 말로 보이게 한다
                    item.milestones[i].checklist[j].evidence = item.milestones[i].description
                    item.milestones[i].checklist[j].completedDate = item.milestones[i].completedDate
                }
            }
            if done < item.milestones.count {
                for j in item.milestones[done].checklist.indices where j < checked {
                    item.milestones[done].checklist[j].isCompleted = true
                    item.milestones[done].checklist[j].evidence = item.milestones[done].description
                    item.milestones[done].checklist[j].completedDate = Date().addingTimeInterval(-day)
                }
            }
            if status == .completed {
                item.dateCompleted = Date().addingTimeInterval(-daysAgo / 3 * day)
            }
            return item
        }
        viewModel.bucketItems = [
            item(.travel(.아이슬란드에서_오로라_보기), status: .climbing, done: 2, checked: 1, daysAgo: 40),
            item(.achievement(.풀코스_마라톤_완주하기), status: .climbing, done: 1, daysAgo: 30),
            item(.experience(.스쿠버다이빙_자격증_취득하기), status: .climbing, done: 0, daysAgo: 10),
            item(.travel(.산토리니에서_일몰_감상하기), status: .completed, done: 99, daysAgo: 300),
            item(.travel(.일본_벚꽃_시즌_교토_여행하기), status: .completed, done: 99, daysAgo: 200),
            item(.achievement(.후지산_등정하기), status: .completed, done: 99, daysAgo: 120),
            item(.travel(.페루_마추픽추_방문하기), status: .climbing, done: 0, daysAgo: 5),
        ]
        viewModel.hasCompletedOnboarding = true
        viewModel.useClassicMode = false
    }
}
#endif
