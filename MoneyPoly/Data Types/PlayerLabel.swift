//  Created by Pavel Trusov on 17.10.2022.

import UIKit

/// Custom UIlabel with rounded corners
final class PlayerLabel: UILabel {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = self.bounds.height / 2
        self.layer.masksToBounds = true
        self.font = UIFont.boldSystemFont(ofSize: 30.0)
        self.backgroundColor = UIColor.white
        self.textAlignment = .center
        self.adjustsFontSizeToFitWidth = true
    }
}
