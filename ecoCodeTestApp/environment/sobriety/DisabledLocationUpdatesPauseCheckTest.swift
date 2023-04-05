import Foundation
import CoreLocation
import UIKit

final class DisabledLocationUpdatesPauseCheckTest: NSObject {
    func myFunction() {
        CLLocationManager().pausesLocationUpdatesAutomatically = false // Issue {Sobriety: Disabled Location Updates Pause Check}
        let manager = CLLocationManager()
        manager.pausesLocationUpdatesAutomatically = false // Issue {Sobriety: Disabled Location Updates Pause Check}

        CLLocationManager().pausesLocationUpdatesAutomatically = true
        manager.pausesLocationUpdatesAutomatically = true
    }
}
