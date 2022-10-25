//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    
    /// Action when OK button is pushed at User Edit view
    /// - Parameter sender: sender button
    @objc func okButtonAction(sender: UIButton) -> Void {
        if let _ = selectedPlayerIndex {
            let textField = view.viewWithTag(Constants.inputTextTag) as! UITextField
            let newName = textField.text
            players[selectedPlayerIndex!].name = newName ?? ""
            updatePlayerName(index: selectedPlayerIndex!)
            
        }
        selectedPlayerIndex = nil
        hideKeyboard()
        view.viewWithTag(Constants.deleteButtonTag)!.isHidden = false
        userEditView.isHidden = true
        teamView.isUserInteractionEnabled = true
    }
}
