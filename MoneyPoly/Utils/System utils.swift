//  Created by Pavel Trusov on 24.10.2022.

import UIKit

/// Current interface orientation
var isLandscape = false

extension ViewController {
    /// Detect interface orientation
    ///
    /// Set boolean landscape variable accordingly
    @objc func detectOrientation() -> Void {
        if (UIDevice.current.orientation.isValidInterfaceOrientation) {
            if UIDevice.current.orientation.isLandscape {isLandscape = true}
            else {isLandscape = false}
        }
    }
    
    /// Actions performed on orientation changes
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        detectOrientation()
        allocateIcons()
    }
    
    /// Hide screen keyboard
    func hideKeyboard() -> Void {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension Comparable {
    ///  Clamp value between min and max
    /// - Parameters:
    ///   - a: min
    ///   - b :   max
    /// - Returns: Clamped value
    func clamp(_ a: Self, _ b: Self)  ->  Self {
        var c = self
        if c < a { c = a }
        if c > b { c = b }
        return c
    }
}
