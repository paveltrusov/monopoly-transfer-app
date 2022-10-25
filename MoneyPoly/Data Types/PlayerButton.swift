//  Created by Pavel Trusov on 17.10.2022.

import UIKit

/// Player icon button
final class PlayerButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = buttonMainSize / 4
        self.setTitleColor(UIColor.white, for: .normal)
        self.backgroundColor = Constants.greenUIColor
        self.contentVerticalAlignment = .center
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        self.titleLabel?.adjustsFontSizeToFitWidth = true
        self.contentEdgeInsets =  UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        
        //MARK: - Depreciation warning
        
        //I got depreciation warning here, but more modern code (commented) is causing fatal error on my iPhone XS under iOS 15.6
        //        self.configuration!.contentInsets = NSDirectionalEdgeInsets(top:
        //         8.0,
        //         leading: 8.0,
        //         bottom: 8.0,
        //         trailing: 8.0)
    }
}
