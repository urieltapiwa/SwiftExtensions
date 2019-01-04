//
//  UIButtonExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UIButton {
    func adjustsFontSizeToFitDevice() {
        switch UIDevice().screenType {
        case .iPhone4, .iPhone5:
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! - 4)
            break
        case .iPhone6Plus, .iPhoneX:
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)! + 0)
            break
        default:
            titleLabel?.font = titleLabel?.font.withSize((titleLabel?.font.pointSize)!)
        }
    }
}
