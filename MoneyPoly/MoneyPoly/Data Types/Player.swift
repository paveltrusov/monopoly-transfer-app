//  Created by Pavel Trusov on 24.10.2022.

import UIKit

/// Structure to store player's data
struct Player {
    /// Player ID
    let id: Int
    /// Player name
    var name: String
    /// Player balance
    var balance: Int
    ///Tag of player balance label view
    let labelTag: Int
    ///Tag of player button label
    let buttonTag: Int
    /// Icon with payer name
    let button = PlayerButton()
    ///Label with player balance (on top of icon with name)
    let label = PlayerLabel()
    ///Location X constraint
    var constraintX =  NSLayoutConstraint()
    ///Location Y constraint
    var constraintY =  NSLayoutConstraint()
    ///Width constraint
    var constraintW = NSLayoutConstraint()
    ///Height constraint
    var constraintH = NSLayoutConstraint()
}
