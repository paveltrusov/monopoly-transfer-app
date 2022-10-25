//  Created by Pavel Trusov on 22.10.2022.

import UIKit

extension ViewController {
    /// Set up main screen view
    func setUpTeamView () {
        teamView.backgroundColor = Constants.backgroundImage
        
        view.addSubview(teamView)
        
        teamView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            teamView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            teamView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            teamView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            teamView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
}
