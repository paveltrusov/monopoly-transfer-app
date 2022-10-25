//  Created by Pavel Trusov on 20.10.2022.

import UIKit

/// Calculated button size depends on main view size
var buttonMainSize: CGFloat = 0

extension ViewController {
    /// Update (set) player name in icon
    /// - Parameter index: Player index
    func updatePlayerName (index: Int) {
        players[index].button.setTitle(players[index].name, for: .normal)
    }
    
    /// Format int as a String with decimal separator
    /// - Parameter number: Source number
    /// - Returns: Formatted string
    func formatDecimal (number: Int) -> (String?) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale = NSLocale(localeIdentifier: "ru_RU") as Locale
        return formatter.string(from: number as NSNumber)
    }
    
    /// Create new Player
    /// - Parameter userName: Player's name
    func createNewPlayer(playerName: String) {
        let newPlayerIndex = players.count
        players.append(
            Player.init(id: newPlayerIndex,
                        name: playerName,
                        balance: 0,
                        labelTag: viewTagCounter,
                        buttonTag: viewTagCounter + 1
                       )
        )
        viewTagCounter += 2
    }
    /// Set (calculates) button size depending on main view size independently on orientation
    func setButtonSize() {
        buttonMainSize = min(view.bounds.width, view.bounds.height) / 4
    }
}
