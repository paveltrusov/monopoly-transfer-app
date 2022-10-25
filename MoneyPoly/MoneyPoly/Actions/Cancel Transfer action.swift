//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    /// Action performing when Cancel button at transfer view is pushed
    @objc func cancelButtonAction(sender: UIButton) -> Void {
        transferView.isHidden = true
        teamView.isUserInteractionEnabled = true
        resetPicker()
    }
}
