//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up SEND button at transfer view
    func setUpSendButton() -> Void {
        let sendButton = MenuButton()
        
        sendButton.setTitle("Send", for: .normal)
        transferView.addSubview(sendButton)
        
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        let sendButConstr_X = NSLayoutConstraint(item: sendButton, attribute: .centerX, relatedBy: .equal, toItem: transferView, attribute: .centerX, multiplier: 1.5, constant: 0)
        let sendButConstr_Y = NSLayoutConstraint(item: sendButton, attribute: .bottom , relatedBy: .equal, toItem: transferView, attribute: .bottom, multiplier: 0.9, constant: 0)
        let sendButConstr_W = NSLayoutConstraint(item: sendButton, attribute: .width, relatedBy: .equal, toItem: transferView, attribute: .width, multiplier: 0.3, constant: 0)
        let sendButConstr_H = NSLayoutConstraint(item: sendButton, attribute: .height, relatedBy: .equal, toItem: transferView, attribute: .height, multiplier: 0.1, constant: 0)
        
        NSLayoutConstraint.activate([sendButConstr_X, sendButConstr_Y,sendButConstr_W, sendButConstr_H])
        
        sendButton.addTarget(self, action: #selector(ViewController.sendButtonAction(sender:)), for: .touchUpInside)
    }
}
