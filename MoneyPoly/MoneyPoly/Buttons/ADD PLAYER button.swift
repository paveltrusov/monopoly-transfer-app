//  Created by Pavel Trusov on 22.10.2022.

import UIKit

/// "Add" buton on a main view
let addPlayerButton = PlayerButton()

extension ViewController {
    /// Set up "Add player" button on a main screen
    func setUpAddUserButton () {
        
        addPlayerButton.setTitle("New", for: .normal)
        addPlayerButton.layer.borderColor = Constants.whiteCGColor
        addPlayerButton.layer.borderWidth = Constants.borderWidth
        
        teamView.addSubview(addPlayerButton)
        
        addPlayerButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addPlayerButton.rightAnchor.constraint(equalTo: teamView.rightAnchor, constant: -buttonMainSize / 10),
            addPlayerButton.topAnchor.constraint(equalTo: teamView.topAnchor, constant: buttonMainSize / 10),
            addPlayerButton.widthAnchor.constraint(equalToConstant: buttonMainSize),
            addPlayerButton.heightAnchor.constraint(equalToConstant: buttonMainSize / 2)
        ])
        
        addPlayerButton.addTarget(self, action: #selector(ViewController.addPlayerButtonAction(sender:)), for: .touchUpInside)
    }
}
