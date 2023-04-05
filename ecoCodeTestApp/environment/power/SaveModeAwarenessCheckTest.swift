import Foundation
import SwiftUI

final class SaveModeAwarenessTest: NSObject, UIApplicationDelegate {
    func myFunction() {
        let isLowPowerModeEnabled = ProcessInfo.processInfo.isLowPowerModeEnabled // Issue {Power: Save Mode Awareness Check}
        _ = ProcessInfo.processInfo.isLowPowerModeEnabled // Issue {Power: Save Mode Awareness Check}
        NotificationCenter.default.addObserver(forName: .NSProcessInfoPowerStateDidChange, object: nil, queue: nil) { _ in } // Issue {Power: Charge Awareness Check}
        NotificationCenter.default.addObserver(forName: Notification.Name.NSProcessInfoPowerStateDidChange, object: nil, queue: nil) { _ in } // Issue {Power: Charge Awareness Check}
        let processInfoPowerStateNotificationName = Notification.Name.NSProcessInfoPowerStateDidChange  // Issue {Power: Charge Awareness Check}
        let _: Notification.Name  = .NSProcessInfoPowerStateDidChange  // Issue {Power: Charge Awareness Check}

        let processInfo = ProcessInfo.processInfo
        _ = processInfo.isLowPowerModeEnabled

    }
}
