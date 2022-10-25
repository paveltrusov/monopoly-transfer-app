//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    /// Action performing when Send button at transfer view is pushed
    ///
    /// Change players (or bank) balances accordingly
    @objc func sendButtonAction(sender: UIButton) -> Void {
        transferView.isHidden = true
        teamView.isUserInteractionEnabled = true
        
        players[transfer.senderIndex!].balance -= pickerValue
        players[transfer.recieverIndex!].balance += pickerValue
        updateBalanceLabels(indicies: [transfer.senderIndex!, transfer.recieverIndex!])
        resetPicker()
    }
}
