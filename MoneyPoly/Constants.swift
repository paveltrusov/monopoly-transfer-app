//  Created by Pavel Trusov on 20.10.2022.

import UIKit

///Stored constants
enum Constants {
    static let greenUIColor = UIColor.init(red: 10/255, green: 70/255, blue: 20/255, alpha: 1)
    static let lightGreenUIColor = UIColor.init(red: 10/255, green: 255/255, blue: 20/255, alpha: 1)
    static let whiteCGColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
    static let lightGreenCGColor = CGColor(red: 10/255, green: 255/255, blue: 20/255, alpha: 1)
    static let deleteButtonTag = viewTagCounter - 1
    static let inputTextTag = viewTagCounter - 2
    static let namePrefix = "Player"
    static let borderWidth = 2.0
    static let backgroundImage = UIColor(patternImage: UIImage(named: "moneyWallpaper.jpg")!)
    static let pickerDecimalRegisters = 4
    static let pickerData = [[String]](repeating: ["0","1","2","3","4","5","6","7","8","9"], count: pickerDecimalRegisters)
}
