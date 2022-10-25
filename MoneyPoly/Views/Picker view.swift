//  Created by Pavel Trusov on 22.10.2022.

import UIKit

/// Digits from picker selection
var pickerSelection = [Int](repeating: 0, count: Constants.pickerDecimalRegisters)
/// Value finally selected on picker
var pickerValue = 0

extension ViewController {
    //MARK: - Pickerview protocol conforming functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return Constants.pickerDecimalRegisters
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Constants.pickerData[0].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Constants.pickerData[component][row]
    }
    
    //MARK: - Setup picker view
    /// Setup picker view (part on transfer view)
    func setUpPickerView () {
        
        pickerView.delegate = self as UIPickerViewDelegate
        pickerView.dataSource = self as UIPickerViewDataSource
        pickerView.setValue(UIColor.white, forKeyPath: "textColor")
        
        transferView.addSubview(pickerView)
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        let constrX = NSLayoutConstraint(item: pickerView, attribute: .centerX, relatedBy: .equal, toItem: transferView, attribute: .centerX, multiplier: 1, constant: 0)
        let constrY = NSLayoutConstraint(item: pickerView, attribute: .top, relatedBy: .equal, toItem: transferView, attribute: .top, multiplier: 1.2, constant: 0)
        let constrW = NSLayoutConstraint(item: pickerView, attribute: .width, relatedBy: .equal, toItem: transferView, attribute: .width, multiplier: 0.8, constant: 0)
        let constrH = NSLayoutConstraint(item: pickerView, attribute: .height, relatedBy: .equal, toItem: transferView, attribute: .height, multiplier: 0.6, constant: 0)
        
        NSLayoutConstraint.activate([constrX, constrY, constrW, constrH])
    }
}
