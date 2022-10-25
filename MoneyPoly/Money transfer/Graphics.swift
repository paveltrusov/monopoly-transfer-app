//  Created by Pavel Trusov on 22.10.2022.

import UIKit

var linesLayer = CAShapeLayer()

extension ViewController {
    /// Draw lines between players icons during money transfer
    /// - Parameters:
    ///   - start: Start point coordinates
    ///   - end: End point coordinates
    func drawLines (start: CGPoint?, end: CGPoint?) {
        if let _ = start, let _ = end {
            linesLayer.strokeColor = Constants.lightGreenCGColor
            linesLayer.lineWidth = 6.0
            
            let linesPath = UIBezierPath()
            linesPath.move   (to: start!)
            linesPath.addLine(to: end!)
            linesLayer.path = linesPath.cgPath
        }
        teamView.layer.insertSublayer(linesLayer, at: 0)
        
    }
    
    /// Highlight player icon during money transfer
    /// - Parameter viewTag: Player's   button tag
    func highlight (viewTag : Int?) {
        if let tag = viewTag {
            if let index = players.firstIndex(where: { $0.buttonTag == tag }) {
            players[index].button.layer.borderWidth = Constants.borderWidth * 2
            players[index].button.layer.borderColor = Constants.lightGreenCGColor
            }
        }
    }
    
    /// Unhighlight player icon when unselected
    /// - Parameter viewTag: Player's button tag
    func unhighlight (viewTag : Int?) {
        if let tag = viewTag {
            if let index = players.firstIndex(where: { $0.buttonTag == tag }) {
            players[index].button.layer.borderWidth = Constants.borderWidth
            players[index].button.layer.borderColor = Constants.whiteCGColor
            }
        }
    }
}
