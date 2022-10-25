//  Created by Pavel Trusov on 24.10.2022.

import UIKit

///  Standard menu button
final class MenuButton: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.green, for: .highlighted)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.adjustsFontSizeToFitWidth = true
    }
}
