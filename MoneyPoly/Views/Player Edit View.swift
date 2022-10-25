//  Created by Pavel Trusov on 21.10.2022.

import UIKit

extension ViewController {
    /// Set up player edit view
    func setUpUserEditView() {
        
        userEditView.backgroundColor = Constants.greenUIColor
        userEditView.layer.borderWidth = Constants.borderWidth
        userEditView.layer.borderColor = Constants.whiteCGColor
        userEditView.layer.cornerRadius = 10
        
        view.addSubview(userEditView)
        
        userEditView.translatesAutoresizingMaskIntoConstraints = false
        
        let userViewConstr_X = NSLayoutConstraint(item: userEditView, attribute: .centerX, relatedBy: .equal, toItem: teamView, attribute: .centerX, multiplier: 1, constant: 0)
        
        let userViewConstr_Y = NSLayoutConstraint(item: userEditView, attribute: .top, relatedBy: .equal, toItem: teamView, attribute: .top, multiplier: 1.1, constant: 0)
        
        let userViewConstr_W = NSLayoutConstraint(item: userEditView, attribute: .width, relatedBy: .equal, toItem: teamView, attribute: .width, multiplier: 0.75, constant: 0)
        userViewConstr_W.priority = UILayoutPriority(900)
        
        let userViewConstr_W_limit = NSLayoutConstraint(item: userEditView, attribute: .width, relatedBy: .lessThanOrEqual, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: 250)
        
        let userViewConstr_H = NSLayoutConstraint(item: userEditView, attribute: .height, relatedBy: .equal, toItem: teamView, attribute: .height, multiplier: 0.4, constant: 0)
        userViewConstr_H.priority = UILayoutPriority(900)
        
        let userViewConstr_H_limit = NSLayoutConstraint(item: userEditView, attribute: .height, relatedBy: .lessThanOrEqual, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        
        NSLayoutConstraint.activate([userViewConstr_X, userViewConstr_Y, userViewConstr_W, userViewConstr_W_limit, userViewConstr_H, userViewConstr_H_limit])
    }
}
