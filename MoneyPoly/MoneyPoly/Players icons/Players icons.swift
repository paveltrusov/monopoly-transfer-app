//  Created by Pavel Trusov on 20.10.2022.

import UIKit

/// Instance with current game players
var players = [Player]()
/// Selected player index
var selectedPlayerIndex: Int?
/// Selected player view tag
var selectedPlayerViewTag: Int?


extension ViewController {
    /// Creates player's icon contained a button for the name and a label for the balance (by calling another function)
    /// - Parameter index: Player's index (0 for the "Bank")
    func createPlayerIcon(index i: Int) {
        setButtonSize()
        
        players[i].button.layer.borderColor = Constants.whiteCGColor
        players[i].button.layer.borderWidth = Constants.borderWidth
        players[i].button.tag = players[i].buttonTag
        players[i].button.frame = CGRect.init(x: 0, y: 0, width: buttonMainSize, height: buttonMainSize)
        updatePlayerName(index: i)
        
        teamView.addSubview(players[i].button)
        
        players[i].button.translatesAutoresizingMaskIntoConstraints = false
        
        players[i].constraintW = NSLayoutConstraint(item: players[i].button, attribute: .width, relatedBy: .equal, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: buttonMainSize)
        players[i].constraintH = NSLayoutConstraint(item: players[i].button, attribute: .height, relatedBy: .equal, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: buttonMainSize / 2)
        
        NSLayoutConstraint.activate([
            players[i].constraintW,
            players[i].constraintH
        ])
        
        //Pan gesture
        players[i].button.isUserInteractionEnabled = true
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(ViewController.wasDragged(_:)))
        players[i].button.addGestureRecognizer(panGesture)
        players[i].button.addTarget(self, action: #selector(ViewController.playerButtonAction(sender:)), for: .touchUpInside)
        
        createPlayerBalanceLabel(index: i)
    }
}
