import Foundation
import SwiftUI

final class IdleTimerDisabledCheckTest: NSObject, UIApplicationDelegate {
    func myFunction() {
        UIApplication.shared.isIdleTimerDisabled = true; // Issue {Idleness: Idle Timer Disabled} 
    }
}
