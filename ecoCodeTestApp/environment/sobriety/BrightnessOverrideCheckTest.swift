import Foundation
import UIKit


final class BrightnessOverrideCheckTest: NSObject {
    func myFunction() {
        UIScreen.main.brightness = CGFloat(0.5); // Issue {Brightness: Brightness Override}
    }
}
