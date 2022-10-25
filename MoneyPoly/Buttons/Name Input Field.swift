//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up text input view when  player wants to change name
    func setUpTextInputField() -> Void {
        let nameInputField = UITextField()
        nameInputField.layer.cornerRadius = 10
        nameInputField.backgroundColor = UIColor.white
        nameInputField.textAlignment = .center
        nameInputField.textColor = Constants.greenUIColor
        nameInputField.font = UIFont.boldSystemFont(ofSize: 40.0)
        nameInputField.adjustsFontSizeToFitWidth = true
        nameInputField.tag = Constants.inputTextTag
        
        userEditView.isHidden = true
        
        userEditView.addSubview(nameInputField)

        nameInputField.translatesAutoresizingMaskIntoConstraints = false
        
        let nameInputConstr_X = NSLayoutConstraint(item: nameInputField, attribute: .centerX, relatedBy: .equal, toItem: userEditView, attribute: .centerX, multiplier: 1, constant: 0)
        
        let nameInputConstr_Y = NSLayoutConstraint(item: nameInputField, attribute: .centerY, relatedBy: .equal, toItem: userEditView, attribute: .centerY, multiplier: 0.5, constant: 0)
        
        let nameInputConstr_W = NSLayoutConstraint(item: nameInputField, attribute: .width, relatedBy: .equal, toItem: userEditView, attribute: .width, multiplier: 0.75, constant: 0)
            
        let nameInputConstr_H = NSLayoutConstraint(item: nameInputField, attribute: .height, relatedBy: .equal, toItem: userEditView, attribute: .height, multiplier: 0.25, constant: 0)
        
        NSLayoutConstraint.activate([nameInputConstr_X, nameInputConstr_Y, nameInputConstr_W, nameInputConstr_H])
    }
}
