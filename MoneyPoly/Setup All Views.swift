//  Created by Pavel Trusov on 22.10.2022.

import UIKit

/// Start counter value for new views created during a game
var viewTagCounter = 100
/// Global  counter to count all players (including deleted)
var totalPlayersCounter = 0

extension ViewController {
    /// Make initial setup fpr all views
    func setUpAllViews() {
        //MARK: - Main view
        setUpTeamView()
        setButtonSize()
        setUpAddUserButton()
        
        //MARK: - Money transfer view
        setUpTransferView()
        setUpPickerView()
        setUpSendButton()
        setUpCancelButton()
        
        //MARK: - User edit/delete view
        setUpUserEditView()
        setUpTextInputField()
        setUpOkButton()
        setUpDeleteButton()
        
        //MARK: - Allocate players icons on main view
        allocateIcons()
    }
}
