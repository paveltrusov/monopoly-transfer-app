//  Created by Pavel Trusov on 19.10.2022.

import UIKit

extension ViewController {
    /// Called everytime when picker selection changed.
    ///
    /// Calculates  value selected on picker.
    /// Assign calculated value to  variable pickerValue.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) -> Void {
        pickerValue = 0
        pickerSelection[component] = row
        for i in 0 ..< Constants.pickerDecimalRegisters {
            pickerValue += pickerSelection[i] * Int(pow (10, Double(Constants.pickerDecimalRegisters - i - 1)))
        }
    }
    
    /// Reset picker selection and picker value to zeros
    func resetPicker() -> Void {
        for i in 0..<Constants.pickerDecimalRegisters {
            pickerView.selectRow(0, inComponent: i, animated: true)
        }
        pickerValue = 0
        pickerSelection = [Int](repeating: 0, count: Constants.pickerDecimalRegisters)
    }
}
