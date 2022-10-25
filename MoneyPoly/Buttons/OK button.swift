//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up OK button to set new name
    func setUpOkButton() {
        let okButton = MenuButton()
        
        okButton.setTitle("Ok", for: .normal)
        userEditView.addSubview(okButton)
        
        okButton.translatesAutoresizingMaskIntoConstraints = false
        
        let okButConstr_X = NSLayoutConstraint(item: okButton, attribute: .centerX, relatedBy: .equal, toItem: userEditView, attribute: .centerX, multiplier: 1.5, constant: 0)
        let okButConstr_Y = NSLayoutConstraint(item: okButton, attribute: .centerY , relatedBy: .equal, toItem: userEditView, attribute: .centerY, multiplier: 1.5, constant: 0)
        let okButConstr_W = NSLayoutConstraint(item: okButton, attribute: .width, relatedBy: .equal, toItem: userEditView, attribute: .width, multiplier: 0.3, constant: 0)
        let okButConstr_H = NSLayoutConstraint(item: okButton, attribute: .height, relatedBy: .equal, toItem: userEditView, attribute: .height, multiplier: 0.3, constant: 0)
        
        NSLayoutConstraint.activate([okButConstr_X, okButConstr_Y,okButConstr_W, okButConstr_H])
        
        okButton.addTarget(self, action: #selector(ViewController.okButtonAction(sender:)), for: .touchUpInside)
    }
}
