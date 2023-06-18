import Foundation
import SwiftUI

final class RigidAlarmCheckTest: NSObject, UIApplicationDelegate {

    @objc func myFunction() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in } // Issue {Idleness: Rigid Alarm}
        let timer2 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(myFunction), userInfo: nil, repeats: true) // Issue {Idleness: Rigid Alarm}
        let timer3 = Timer(timeInterval: 1.0, repeats: true) { _ in } // Issue {Idleness: Rigid Alarm}
        let timer4 = Timer(timeInterval: 1.0, target: self, selector: #selector(myFunction), userInfo: nil, repeats: true) // Issue {Idleness: Rigid Alarm}
        let timer5 = Timer(fire: .distantFuture, interval: 1.0, repeats: true, block: { _ in }) // Issue {Idleness: Rigid Alarm}
        let timer6 = Timer(fireAt: .distantFuture, interval: 1.0, target: self, selector: #selector(myFunction), userInfo: nil, repeats: true) // Issue {Idleness: Rigid Alarm}
    }
}
