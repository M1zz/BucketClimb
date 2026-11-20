//
//  GoalReminders.swift
//  BucketClimb
//
//  한 달 동안 진행이 없는 목표를 알린다. 알림은 기기 안에서만 예약한다.
//

import Foundation
import UserNotifications

enum GoalReminders {
    private static let key = "StaleGoalReminders"
    private static let prefix = "stale-"
    /// 예약해 둘 알림 수의 위. 기기는 앱마다 64개까지만 맡아 준다.
    private static let limit = 30

    /// 설정의 스위치. 처음에는 켜져 있다.
    static var isOn: Bool {
        get { UserDefaults.standard.object(forKey: key) as? Bool ?? true }
        set { UserDefaults.standard.set(newValue, forKey: key) }
    }

    /// 처음에는 묻지 않고 조용한 알림(알림 센터에만 쌓임)으로 시작한다.
    static func start() {
        UNUserNotificationCenter.current().delegate = Delegate.shared
        guard isOn else { return }
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .provisional]) { _, _ in }
    }

    /// 설정에서 켤 때는 정식으로 허락을 구한다. 허락받지 못하면 false.
    static func turnOn() async -> Bool {
        let granted = (try? await UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound])) ?? false
        let status = await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
        let allowed = granted || status == .authorized || status == .provisional
        isOn = allowed
        return allowed
    }

    static func turnOff() {
        isOn = false
        schedule([])
    }

    /// 목표마다 '마지막 진행 + 30일'의 오전 10시에 알림 하나를 건다. 이미 지난 목표는 앱 안에서 묻는다.
    static func sync(_ goals: [BucketListItem]) {
        guard isOn else { return }
        let calendar = Calendar.current
        let now = Date()
        let plans: [(BucketListItem, Date)] = goals
            .filter { $0.status != .completed }
            .compactMap { goal in
                guard let day = calendar.date(byAdding: .day, value: BucketListItem.staleAfterDays, to: goal.lastActivity),
                      let at = calendar.date(bySettingHour: 10, minute: 0, second: 0, of: day), at > now else { return nil }
                return (goal, at)
            }
            .sorted { $0.1 < $1.1 }
        schedule(Array(plans.prefix(limit)))
    }

    private static func schedule(_ plans: [(BucketListItem, Date)]) {
        let center = UNUserNotificationCenter.current()
        let body = String(localized: "한 달 넘게 진행이 없습니다. 계속할까요?")
        let requests = plans.map { goal, at in
            let content = UNMutableNotificationContent()
            content.title = goal.title.localizedBucket
            content.body = body
            content.sound = .default
            content.userInfo = ["goalID": goal.id.uuidString]
            let parts = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: at)
            return UNNotificationRequest(identifier: prefix + goal.id.uuidString, content: content,
                                         trigger: UNCalendarNotificationTrigger(dateMatching: parts, repeats: false))
        }
        center.getPendingNotificationRequests { pending in
            center.removePendingNotificationRequests(withIdentifiers: pending.map(\.identifier).filter { $0.hasPrefix(prefix) })
            requests.forEach { center.add($0) }
        }
    }

    /// 알림을 누르면 그 목표를 연다.
    private final class Delegate: NSObject, UNUserNotificationCenterDelegate {
        static let shared = Delegate()

        func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
            guard let raw = response.notification.request.content.userInfo["goalID"] as? String, let id = UUID(uuidString: raw) else { return }
            await MainActor.run { GoalRouter.shared.goalID = id }
        }
    }
}
