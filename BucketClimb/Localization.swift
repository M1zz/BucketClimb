import Foundation

extension String {
    /// 예전 판의 추천 목록에서 온 데이터(목표 제목·단계·체크 항목·장소 이름·단위)를 기기 언어로 바꾼다.
    /// 데이터는 한국어 원문을 그대로 저장하고(식별용), 화면에 보일 때만 `Buckets.xcstrings` 에서 찾는다.
    /// 사용자가 직접 쓴 글은 표에 없으므로 그대로 돌려준다.
    var localizedBucket: String {
        Bundle.main.localizedString(forKey: self, value: self, table: "Buckets")
    }
}
