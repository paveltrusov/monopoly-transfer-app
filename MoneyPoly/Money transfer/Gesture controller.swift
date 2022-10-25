//  Created by Pavel Trusov on 20.10.2022.

import UIKit

///Instance to store transfer data
var transfer = Transfer()
/// Line start point
var startPoint: CGPoint?
/// Line end point
var endPoint: CGPoint?

extension ViewController {
    /// Handle pan gestures for money transfer between players
    /// - Parameter pan: Pan gesture recognizer
    @objc func wasDragged(_ pan: UIPanGestureRecognizer) {
        let location = pan.location(in: teamView)
        
        //Store player from which view transfer was started
        if pan.state == .began {
            startPoint = pan.view?.center
            transfer.senderTag = pan.view?.tag
            highlight(viewTag: transfer.senderTag!)
        }
        
        // When ended, store player on whose view transfer was finished
        else if pan.state == .ended {
            linesLayer.removeFromSuperlayer()
            
            unhighlight(viewTag: transfer.senderTag)
            unhighlight(viewTag: selectedPlayerViewTag)
            
            if let _ = selectedPlayerViewTag {
                transfer.recieverTag = selectedPlayerViewTag
                
                transfer.senderIndex = players.firstIndex(where: { $0.buttonTag == transfer.senderTag })
                transfer.recieverIndex = players.firstIndex(where: { $0.buttonTag == transfer.recieverTag })
                
                // Proceed transfer
                if let _ = transfer.senderIndex, let _ = transfer.recieverIndex {
                    transferView.isHidden = false
                    teamView.isUserInteractionEnabled = false
                    resetPicker()
                }
            } else {
                transfer.senderTag = nil
                transfer.recieverTag = nil
            }
            transfer.senderTag = nil
            transfer.recieverTag = nil
            selectedPlayerViewTag = nil
        }
        
        // When transfer was started but not finished yet, recognize which view is currently selected
        else if pan.state == .changed {
            linesLayer.removeFromSuperlayer()

            endPoint = location
            drawLines(start: startPoint, end: endPoint)
            
            // Check if any of players view contains pan location
            for view in teamView.subviews {
                if view.frame.contains(location) && view.tag != transfer.senderTag {
                    selectedPlayerViewTag = view.tag
                    highlight(viewTag: selectedPlayerViewTag)
                    break
                }
                else {
                    unhighlight(viewTag: selectedPlayerViewTag)
                    selectedPlayerViewTag = nil
                }
            }
        }
    }
}
