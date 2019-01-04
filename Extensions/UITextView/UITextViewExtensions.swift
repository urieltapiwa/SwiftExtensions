//
//  UITextViewDelegate.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UITextView {
    ///validate text
    func isValid (inValidBorderColor: UIColor = UIColor.red, validBorderColor: UIColor = UIColor.init(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0), inValidWidth: CGFloat = 1.0, validWidth: CGFloat = 0.0, inValidCornerRadius: CGFloat = 0.0, validCornerRadius: CGFloat = 0.0) -> Bool {
        let layer = CALayer()
        if (self.text?.isBlank)! {
            self.layer.borderColor = inValidBorderColor.cgColor
            self.layer.borderWidth = inValidWidth
            self.layer.insertSublayer(layer, at: 0)
            return true
        } else {
            self.layer.borderColor = validBorderColor.cgColor
            self.layer.borderWidth = validWidth
            self.layer.insertSublayer(layer, at: 0)
            return false
        }
    }
}
