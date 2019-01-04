//
//  CurrencyTextField.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public class CurrencyField: UITextField {
    var string: String { return text ?? "" }
    var decimal: Decimal {
        return string.digits.decimal /
            Decimal(pow(10, Double(Formatter.currency.maximumFractionDigits)))
    }
    var decimalNumber: NSDecimalNumber { return decimal.number }
    var doubleValue: Double { return decimalNumber.doubleValue }
    var integerValue: Int { return decimalNumber.intValue   }
    let maximum: Decimal = 999_999_999.99
    private var lastValue: String = ""
    override public func willMove(toSuperview newSuperview: UIView?) {
        // you can make it a fixed locale currency if if needed
        // Formatter.currency.locale = Locale(identifier: "pt_BR") // or "en_US", "fr_FR", etc
        addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        keyboardType = .numberPad
        textAlignment = .right
        editingChanged()
    }
    override public func delete(_ sender: Any?) {
        text = string.digits.dropLast().string
        editingChanged()
    }
    override public func deleteBackward() {
        text = string.digits.dropLast().string
        editingChanged()
    }
    @objc func editingChanged() {
        guard decimal <= maximum else {
            text = lastValue
            return
        }
        lastValue = Formatter.currency.string(for: decimal) ?? ""
        text = lastValue
        print("integer:", integerValue)
        print("double:", doubleValue)
        print("decimal:", decimal)
        print("currency:", lastValue)
    }
}
