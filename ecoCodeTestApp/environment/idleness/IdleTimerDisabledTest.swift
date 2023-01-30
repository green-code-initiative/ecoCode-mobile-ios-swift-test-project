import Foundation
import SwiftUI

final class IdleTimerDisabledTest: NSObject, UIApplicationDelegate {
    func myFunction() {
        UIApplication.shared.isIdleTimerDisabled = true; // Issue {Idleness: Idle Timer Disabled}
    }
}
