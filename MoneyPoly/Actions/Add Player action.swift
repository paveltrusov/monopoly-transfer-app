//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    /// Action performing when "Add user" button on main screen is pushed
    /// - Parameter sender: sender button
    @objc func addPlayerButtonAction(sender: UIButton) -> Void {
        let i = players.count
        var playerName = Constants.namePrefix + "\(totalPlayersCounter)"
        
        if i == 0 {playerName = "BANK"}
        
        if i <= 6 {
            createNewPlayer(playerName: playerName)
            totalPlayersCounter += 1
            createPlayerIcon(index: i)
            allocateIcons()
        }
    }
}

