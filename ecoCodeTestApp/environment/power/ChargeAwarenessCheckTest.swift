import Foundation
import UIKit

final class ChargeAwarenessCheckTest: NSObject {
    func myFunction() {
        let level = UIDevice.current.batteryLevel // Issue {Power: Charge Awareness Check}
        _ = UIDevice.current.batteryLevel // Issue {Power: Charge Awareness Check}
        let state = UIDevice.current.batteryState // Issue {Power: Charge Awareness Check}
        _ = UIDevice.current.batteryState // Issue {Power: Charge Awareness Check}
        NotificationCenter.default.addObserver(forName: UIDevice.batteryLevelDidChangeNotification, object: nil, queue: nil) { _ in } // Issue {Power: Charge Awareness Check}
        NotificationCenter.default.addObserver(forName: UIDevice.batteryStateDidChangeNotification, object: nil, queue: nil) { _ in } // Issue {Power: Charge Awareness Check}
        let batteryStateNotificationName = UIDevice.batteryStateDidChangeNotification  // Issue {Power: Charge Awareness Check}

        let device = UIDevice.current
        _ = device.batteryState
    }
}
