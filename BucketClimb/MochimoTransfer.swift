//
//  MochimoTransfer.swift
//  BucketClimb
//
//  모찌모로 옮기기.
//
//  꿈을 찾아서는 모찌모(같은 개발자의 앱)의 '내 삶의 목표' 로 합쳐졌다. 이 앱은 더 팔지 않고,
//  이미 받은 사람은 계속 쓸 수 있다. 여기서 모든 목표 · 답 · 장애물 · 단계 · 기록 · 사진을 파일 하나로 묶어
//  두 앱이 함께 쓰는 App Group 폴더에 두고 모찌모를 연다. 모찌모가 그 파일을 읽어 가져온다.
//
//  ⚠️ `DreamTransfer` 의 모양은 모찌모의 `DreamImport.swift` 와 같아야 한다. 한쪽만 바꾸지 않는다.
//

import SwiftUI

struct DreamTransfer: Codable {
    var version: Int
    var exportedAt: Date
    var goals: [Goal]

    struct Goal: Codable {
        var id: String
        var title: String
        var added: Date
        var completed: Date?
        var stopped: Bool
        /// when · who · how · whyNot · value
        var answers: [String: String]
        var obstacles: [String]
        var doneSteps: [Step]
        var openSteps: [String]
        var records: [Record]
    }

    struct Step: Codable {
        var title: String
        var date: Date?
    }

    struct Record: Codable {
        var date: Date?
        var step: String?
        var text: String
        /// JPEG
        var photos: [Data]
    }
}

enum MochimoTransfer {
    static let appGroup = "group.com.leeo.ReboundJournal"
    static let fileName = "DreamSeekerTransfer.json"
    static let openURL = URL(string: "pebble://import-dreams")!
    static let appStoreURL = URL(string: "https://apps.apple.com/app/id6450388408")!

    /// 파일을 만들어 App Group 에 둔다. 실패하면 false.
    static func write(_ items: [BucketListItem]) -> Bool {
        guard let folder = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: appGroup) else { return false }
        let transfer = DreamTransfer(version: 1, exportedAt: Date(), goals: items.map(goal))
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        guard let data = try? encoder.encode(transfer) else { return false }
        do {
            try data.write(to: folder.appendingPathComponent(fileName), options: .atomic)
            return true
        } catch {
            return false
        }
    }

    /// 모찌모를 연다. 깔려 있지 않으면 App Store 의 모찌모 페이지로. 깔고 처음 열면 모찌모가 가져올지 묻는다.
    @MainActor
    static func openMochimo() {
        UIApplication.shared.open(openURL) { opened in
            if !opened { UIApplication.shared.open(appStoreURL) }
        }
    }

    private static func goal(_ item: BucketListItem) -> DreamTransfer.Goal {
        var answers: [String: String] = [:]
        for blank in GoalBlank.allCases where blank != .obstacle {
            let answer = item.answer(blank).trimmingCharacters(in: .whitespacesAndNewlines)
            if !answer.isEmpty { answers[blank.rawValue] = answer }
        }

        var obstacles: [String] = []
        let said = item.answer(.obstacle).trimmingCharacters(in: .whitespacesAndNewlines)
        if !said.isEmpty { obstacles.append(said) }
        // 예전 판의 장애물(비용 · 시간 …). 다 넘은 것은 옮기지 않는다.
        for obstacle in item.obstacles where !obstacle.isCleared {
            let text = obstacle.description.trimmingCharacters(in: .whitespacesAndNewlines)
            obstacles.append(text.isEmpty ? obstacle.type.displayName : text.localizedBucket)
        }

        let done = item.milestones.filter(\.isCompleted)
            .map { DreamTransfer.Step(title: $0.title.localizedBucket, date: $0.completedDate) }
        let open = item.milestones.filter { !$0.isCompleted }.map(\.title.localizedBucket)

        var records = item.timeline.map { record in
            DreamTransfer.Record(date: record.date,
                                 step: record.step?.localizedBucket,
                                 text: record.text,
                                 photos: record.photos.compactMap(jpeg))
        }
        // 예전 판이 목표 자체에 붙인 사진.
        let goalPhotos = item.photos.compactMap(jpeg)
        if !goalPhotos.isEmpty {
            records.append(DreamTransfer.Record(date: item.dateAdded, step: nil, text: "", photos: goalPhotos))
        }
        records.removeAll { $0.text.isEmpty && $0.photos.isEmpty }

        return DreamTransfer.Goal(
            id: item.id.uuidString,
            title: item.title.localizedBucket,
            added: item.dateAdded,
            completed: item.isAbandoned ? nil : item.dateCompleted,
            stopped: item.isAbandoned,
            answers: answers,
            obstacles: obstacles,
            doneSteps: done,
            openSteps: open,
            records: records
        )
    }

    /// 기록 사진 파일을 JPEG 로. 긴 변 1600 으로 줄여 옮기는 파일이 너무 커지지 않게 한다.
    private static func jpeg(_ name: String) -> Data? {
        guard let image = GoalPhotos.load(name) else { return nil }
        let scale = min(1, 1600 / max(image.size.width, image.size.height))
        let size = CGSize(width: image.size.width * scale, height: image.size.height * scale)
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format).image { _ in
            image.draw(in: CGRect(origin: .zero, size: size))
        }.jpegData(compressionQuality: 0.8)
    }
}

// MARK: - 화면

/// 첫 화면 맨 위와 설정에 두는 안내. 누르면 옮기고 모찌모를 연다.
struct MochimoMoveCard: View {
    @EnvironmentObject var viewModel: BucketListViewModel
    @State private var failed = false
    @State private var working = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("꿈을 찾아서가 모찌모로 옮겨 갑니다")
                .font(.headline)
            Text("모찌모의 '내 삶의 목표'에서 목표를 이어 갈 수 있어요. 목표 · 답 · 단계 · 기록 · 사진을 모두 옮기고, 이 앱의 기록은 그대로 남습니다.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
            Button {
                move()
            } label: {
                HStack {
                    if working { ProgressView().padding(.trailing, 4) }
                    Text("모찌모로 옮기기")
                        .frame(maxWidth: .infinity)
                }
            }
            .buttonStyle(.borderedProminent)
            .disabled(working)
        }
        .padding(.vertical, 6)
        .alert("옮길 파일을 만들지 못했어요", isPresented: $failed) {
            Button("확인", role: .cancel) { }
        } message: {
            Text("잠시 뒤에 다시 해 보세요.")
        }
    }

    private func move() {
        working = true
        // 사진을 줄이는 동안 단추가 눌린 채로 보이게 한 박자 뒤에 한다.
        DispatchQueue.main.async {
            let ok = MochimoTransfer.write(viewModel.bucketItems)
            working = false
            if ok { MochimoTransfer.openMochimo() } else { failed = true }
        }
    }
}
