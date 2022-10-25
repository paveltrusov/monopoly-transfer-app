//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up button to delete player
    func setUpDeleteButton() {
        let deleteUserButton = MenuButton()
        deleteUserButton.setTitle("Delete", for: .normal)
        deleteUserButton.tag = Constants.deleteButtonTag
        
        userEditView.addSubview(deleteUserButton)
        
        deleteUserButton.translatesAutoresizingMaskIntoConstraints = false
        
        let deleteButConstr_X = NSLayoutConstraint(item: deleteUserButton, attribute: .centerX, relatedBy: .equal, toItem: userEditView, attribute: .centerX, multiplier: 0.5, constant: 0)
        let deleteButConstr_Y = NSLayoutConstraint(item: deleteUserButton, attribute: .centerY , relatedBy: .equal, toItem: userEditView, attribute: .centerY, multiplier: 1.5, constant: 0)
        let deleteButConstr_W = NSLayoutConstraint(item: deleteUserButton, attribute: .width, relatedBy: .equal, toItem: userEditView, attribute: .width, multiplier: 0.3, constant: 0)
        let deleteButConstr_H = NSLayoutConstraint(item: deleteUserButton, attribute: .height, relatedBy: .equal, toItem: userEditView, attribute: .height, multiplier: 0.3, constant: 0)
        
        NSLayoutConstraint.activate([deleteButConstr_X, deleteButConstr_Y, deleteButConstr_W, deleteButConstr_H])
        
        deleteUserButton.addTarget(self, action: #selector(ViewController.deleteUserButtonAction(sender:)), for: .touchUpInside)
    }
}
