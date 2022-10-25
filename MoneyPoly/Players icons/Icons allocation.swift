//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set (update) players icons constraints according to players number and interface orientation
    func allocateIcons() {
        if let _ = calculateCoordinates() {
            let coord = calculateCoordinates() as! [CGPoint]
            
            //MARK: - Bank icon location
            NSLayoutConstraint.deactivate([players[0].constraintX, players[0].constraintY])
            
            if isLandscape {
                players[0].constraintX = NSLayoutConstraint(item: players[0].button, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: .equal, toItem: teamView, attribute: .centerX, multiplier: 1, constant: 0)
                players[0].constraintY = NSLayoutConstraint(item: players[0].button, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: .equal, toItem: teamView, attribute: .bottom, multiplier: 1, constant: -buttonMainSize / 4)
            } else {
                players[0].constraintX = NSLayoutConstraint(item: players[0].button, attribute: NSLayoutConstraint.Attribute.left, relatedBy: .equal, toItem: teamView, attribute: .left, multiplier: 1, constant: buttonMainSize / 10)
                players[0].constraintY = NSLayoutConstraint(item: players[0].button, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: .equal, toItem: teamView, attribute: .centerY, multiplier: 1, constant: 0)
            }
            NSLayoutConstraint.activate([players[0].constraintX, players[0].constraintY])
            
            //MARK: - Players icons location and size
            for i in 1 ..< players.count {
                NSLayoutConstraint.deactivate([players[i].constraintX, players[i].constraintY, players[i].constraintW, players[i].constraintH])
                
                players[i].constraintX = NSLayoutConstraint(item: players[i].button, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: .equal, toItem: players[0].button, attribute: .centerX, multiplier: 1, constant: coord[i].x)
                players[i].constraintY = NSLayoutConstraint(item: players[i].button, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: .equal, toItem: players[0].button, attribute: .centerY, multiplier: 1, constant: coord[i].y)
                
                /// Icon size multiplier to make icons size depending on players number
                var sizeMultiplier = 10.0 / (Double(players.count) + 2)
                sizeMultiplier = sizeMultiplier.clamp(1.0, 1.5)
                
                players[i].constraintW = NSLayoutConstraint(item: players[i].button, attribute: .width, relatedBy: .equal, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: buttonMainSize * sizeMultiplier)
                players[i].constraintH = NSLayoutConstraint(item: players[i].button, attribute: .height, relatedBy: .equal, toItem: .none, attribute: .notAnAttribute, multiplier: 1, constant: buttonMainSize * sizeMultiplier / 2)
                NSLayoutConstraint.activate([players[i].constraintX, players[i].constraintY, players[i].constraintW, players[i].constraintH])
            }
            
        } else {return}
    }
}
