import Foundation

extension String {
    /// 예전 판의 추천 목록에서 온 데이터(목표 제목·단계·체크 항목·장소 이름·단위)를 기기 언어로 바꾼다.
    /// 데이터는 한국어 원문을 그대로 저장하고(식별용), 화면에 보일 때만 `Buckets.xcstrings` 에서 찾는다.
    /// 사용자가 직접 쓴 글은 표에 없으므로 그대로 돌려준다.
    var localizedBucket: String {
        Bundle.main.localizedString(forKey: self, value: self, table: "Buckets")
    }
}

// MARK: - 숫자 · 날짜

/// 화면에 숫자 · 날짜를 그릴 로케일. 아랍어만 0-9 숫자와 양력으로 고정하고, 다른 언어는 기기 설정 그대로 둔다.
/// 사우디 기기에서는 숫자가 ١٢٣ 과 123 으로 섞이고 날짜가 이슬람력으로 나올 수 있다 — 문구 속 숫자(123)와 맞춘다.
enum AppLocale {
    static let isArabic = Bundle.main.preferredLocalizations.first == "ar"

    static let display: Locale = isArabic ? Locale(identifier: "ar@calendar=gregorian;numbers=latn") : .autoupdatingCurrent

    static let calendar: Calendar = {
        guard isArabic else { return .autoupdatingCurrent }
        var calendar = Calendar(identifier: .gregorian)
        calendar.locale = display
        return calendar
    }()
}

extension Date {
    /// 완료한 날 · 기록 날짜처럼 하루를 적는 짧은 날짜.
    var dayText: String {
        formatted(Date.FormatStyle(date: .abbreviated, time: .omitted, locale: AppLocale.display, calendar: AppLocale.calendar))
    }
}
