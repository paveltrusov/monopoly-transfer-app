//  Created by Pavel Trusov on 17.10.2022.

import UIKit

final class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    /// Main view where all players icons allocated
    let teamView = UIView()
    /// Window to change player's name or delete player
    let userEditView = UIView()
    /// Window to make money transfer between users or bank
    let transferView = UIView()
    /// Decimal picker, part of transferView
    let pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.detectOrientation), name: UIDevice.orientationDidChangeNotification, object: nil)
        setUpAllViews()
    }
}
