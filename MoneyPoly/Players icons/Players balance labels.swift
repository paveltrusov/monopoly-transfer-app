//  Created by Pavel Trusov on 24.10.2022.

import UIKit

extension ViewController {
    /// Create player's balance label on top of player's button
    func createPlayerBalanceLabel (index i: Int) -> Void {
        guard i > 0 else {return}  // The Bank doesn't have a balance label
        players[i].label.tag = players[i].labelTag
        teamView.addSubview(players[i].label)
        updateBalanceLabels(indicies: [i])
        players[i].label.textColor = Constants.greenUIColor
        
        players[i].label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            players[i].label.centerXAnchor.constraint(equalTo: players[i].button.centerXAnchor),
            players[i].label.centerYAnchor.constraint(equalTo: players[i].button.topAnchor),
            players[i].label.widthAnchor.constraint(equalTo: players[i].button.widthAnchor),
            players[i].label.heightAnchor.constraint(equalToConstant: players[i].button.bounds.height / 3)
        ])
    }
    
    /// Update (or set) labels with player's balance
    /// - Parameter indicies: List of players indexes. Zero index is ignored as the Bank doesn't have balance label
    func updateBalanceLabels(indicies: [Int]) {
        for i in indicies {
            guard i > 0 else {continue}
            let labelView = teamView.viewWithTag(players[i].labelTag) as! PlayerLabel
            labelView.text = formatDecimal(number: players[i].balance)
            
            if players[i].balance >= 0 {
                labelView.textColor = Constants.greenUIColor
            } else {
                labelView.textColor = UIColor.red
            }
        }
    }
}
