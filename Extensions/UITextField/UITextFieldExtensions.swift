//
//  UITextFieldExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UITextField {
    ///validate text field
    func isValid(inValidBorderColor: UIColor = UIColor.red, validBorderColor: UIColor = UIColor.init(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0), inValidWidth: CGFloat = 1.0, validWidth: CGFloat = 1.0, inValidCornerRadius: CGFloat = 5.0, validCornerRadius: CGFloat = 5.0) -> Bool {
        if (self.text?.isBlank)! {
            self.layer.borderColor = inValidBorderColor.cgColor
            self.layer.borderWidth = inValidWidth
            self.layer.cornerRadius = inValidCornerRadius
            return false
        } else {
            self.layer.borderColor = validBorderColor.cgColor
            self.layer.borderWidth = validWidth
            self.layer.cornerRadius = validCornerRadius
            return true
        }
    }
    
    func isCardNumberValid(inValidBorderColor: UIColor = UIColor.red, validBorderColor: UIColor = UIColor.init(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0), inValidWidth: CGFloat = 1.0, validWidth: CGFloat = 1.0, inValidCornerRadius: CGFloat = 5.0, validCornerRadius: CGFloat = 5.0) -> Bool {
        
        if (self.text?.count)! < 10 || ((self.text?.count)! > 19 ) {
            self.layer.borderColor = inValidBorderColor.cgColor
            self.layer.borderWidth = inValidWidth
            self.layer.cornerRadius = inValidCornerRadius
            return false
        } else {
            self.layer.borderColor = validBorderColor.cgColor
            self.layer.borderWidth = validWidth
            self.layer.cornerRadius = validCornerRadius
            return true
        }
    }
    
    ///validate email
    func isEmailValid(inValidBorderColor: UIColor = UIColor.red, validBorderColor: UIColor = UIColor.init(red: 204.0/255.0, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1.0), inValidWidth: CGFloat = 1.0, validWidth: CGFloat = 1.0, inValidCornerRadius: CGFloat = 5.0, validCornerRadius: CGFloat = 5.0) -> Bool {
        if (self.text?.isBlank)! || !(self.text?.isEmail)! {
            self.layer.borderColor = inValidBorderColor.cgColor
            self.layer.borderWidth = inValidWidth
            self.layer.cornerRadius = inValidCornerRadius
            return false
        } else {
            self.layer.borderColor = validBorderColor.cgColor
            self.layer.borderWidth = validWidth
            self.layer.cornerRadius = validCornerRadius
            return true
        }
    }
}
