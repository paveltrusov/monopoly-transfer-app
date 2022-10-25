//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up money transfer window
    func setUpTransferView () -> Void {
        transferView.backgroundColor = Constants.greenUIColor
        transferView.layer.borderWidth = Constants.borderWidth
        transferView.layer.borderColor = Constants.whiteCGColor
        transferView.layer.cornerRadius = 10
        
        view.addSubview(transferView)
        
        transferView.translatesAutoresizingMaskIntoConstraints = false

        let constrW = NSLayoutConstraint(item: transferView, attribute: .width, relatedBy: .equal, toItem: teamView, attribute: .width, multiplier: 0.8, constant: 0)
        let constrH = NSLayoutConstraint(item: transferView, attribute: .height, relatedBy: .equal, toItem: teamView, attribute: .height, multiplier: 0.6, constant: 0)
        
        NSLayoutConstraint.activate([
            transferView.centerXAnchor.constraint(equalTo: teamView.centerXAnchor),
            transferView.centerYAnchor.constraint(equalTo: teamView.centerYAnchor),
            constrW,
            constrH
            ])
        
        transferView.isHidden = true
    }
}
