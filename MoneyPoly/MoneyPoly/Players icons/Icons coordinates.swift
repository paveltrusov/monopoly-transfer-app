//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Calculates player's icons coordinates
    /// - Returns: Player's icons coordinates relative to Bank icon (for the Bank x:0, y:0 )
    func calculateCoordinates () -> (Any?) {
        guard players.count > 0 else {return nil}
        
        /// Coordinates for bank and players icons relatove to the bank icon (Bank icon always at x:0, y:0)
        var coordinates = [CGPoint](repeating: CGPoint(x: 0, y: 0), count: players.count)
        
        var startAngle = -Double.pi / 2
        if isLandscape {startAngle += .pi/2}
        
        ///Distance between Bank and players icons
        ///Calculated to be less than  a screen long edge
        let radius = max(teamView.bounds.height, teamView.bounds.width) / 2 - buttonMainSize * 1.5
        var angles = [Int]()
        
        ///Array of angles depending on players number.
        ///Not calculated analytically to allocate icons nicely
        switch  players.count {
        case 2: angles = [0]
        case 3: angles = [-45, 45]
        case 4: angles = [-60, 0, 60]
        case 5: angles = [-70, -23, 23, 70]
        case 6: angles = [-80, -40, 0, 40, 80]
        case 7: angles = [-90, -54, -18, 18, 54, 90]
        default: break
        }
        
        for i in 1 ..< players.count {
            let inRadians = Double(angles[i-1]) / 180.0 * Double.pi
            let x =  -radius * sin(startAngle + inRadians)
            let y =  -radius * cos(startAngle + inRadians)
            
            coordinates[i] = CGPoint(x: x, y: y)
        }
        return coordinates
    }
}
