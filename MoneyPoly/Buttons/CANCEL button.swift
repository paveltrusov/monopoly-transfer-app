//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up CANCEL button at transfer view
    func setUpCancelButton() -> Void {
        let cancelButton = MenuButton()
        
        cancelButton.setTitle("Cancel", for: .normal)
        transferView.addSubview(cancelButton)
        
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        let cancelButConstr_X = NSLayoutConstraint(item: cancelButton, attribute: .centerX, relatedBy: .equal, toItem: transferView, attribute: .centerX, multiplier: 0.5, constant: 0)
        let cancelButConstr_Y = NSLayoutConstraint(item: cancelButton, attribute: .bottom , relatedBy: .equal, toItem: transferView, attribute: .bottom, multiplier: 0.9, constant: 0)
        let cancelButConstr_W = NSLayoutConstraint(item: cancelButton, attribute: .width, relatedBy: .equal, toItem: transferView, attribute: .width, multiplier: 0.3, constant: 0)
        let cancelButConstr_H = NSLayoutConstraint(item: cancelButton, attribute: .height, relatedBy: .equal, toItem: transferView, attribute: .height, multiplier: 0.1, constant: 0)
        
        NSLayoutConstraint.activate([cancelButConstr_X, cancelButConstr_Y,cancelButConstr_W, cancelButConstr_H])
        
        cancelButton.addTarget(self, action: #selector(ViewController.cancelButtonAction(sender:)), for: .touchUpInside)
    }
}
