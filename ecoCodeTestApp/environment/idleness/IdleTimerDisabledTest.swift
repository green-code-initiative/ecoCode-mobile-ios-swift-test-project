import Foundation
import SwiftUI

final class IdleTimerDisabledTest: NSObject, UIApplicationDelegate {
    func myFunction() {
        UIApplication.shared.isIdleTimerDisabled = true; // Issue {Idleness: Idle Timer Disabled}
        UIScreen.main.brightness = CGFloat(0.5); // Issue {Brightness: Brightness Override} 
    }
}
