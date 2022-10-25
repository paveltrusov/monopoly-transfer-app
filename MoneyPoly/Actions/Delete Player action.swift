//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    
    /// Action performing when "Delete user" button is pushed
    /// - Parameter sender: sender button
    @objc func deleteUserButtonAction(sender: UIButton) -> Void {
        if let _ = selectedPlayerIndex{
            players[selectedPlayerIndex!].label.removeFromSuperview()
            players[selectedPlayerIndex!].button.removeFromSuperview()
            players.remove(at: selectedPlayerIndex!)
            selectedPlayerIndex = nil
            allocateIcons()
        }
        
        view.viewWithTag(Constants.deleteButtonTag)!.isHidden = false
        userEditView.isHidden = true
        hideKeyboard()
        teamView.isUserInteractionEnabled = true
    }
}
