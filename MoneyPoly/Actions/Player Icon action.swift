//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    /// Open editor window when player icon (button with name) is pushed
    /// - Parameter sender: sender button
    ///
    /// Makes main view inactive for user interactions
    @objc func playerButtonAction(sender: UIButton) -> Void {
        userEditView.isHidden = false
        teamView.isUserInteractionEnabled = false
        
        //Open keyboard and select all text by default
        view.viewWithTag(Constants.inputTextTag)?.becomeFirstResponder()
        view.viewWithTag(Constants.inputTextTag)?.perform(#selector(selectAll(_:)), with: nil, afterDelay: 0.1)
        
        let textField =  self.view.viewWithTag(Constants.inputTextTag) as! UITextField
        if let userIndex = players.firstIndex(where: { $0.buttonTag == sender.tag }){
            selectedPlayerIndex = userIndex
            textField.text = "\(players[selectedPlayerIndex!].name)"
            if selectedPlayerIndex == 0 {view.viewWithTag(Constants.deleteButtonTag)!.isHidden = true}
        }
    }
}
