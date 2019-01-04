//
//  UILabelExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    func adjustsFontSizeToFitDevice() {
        switch UIDevice().screenType {
        case .iPhone4, .iPhone5:
            font = font.withSize(font.pointSize - 4)
            break
        case .iPhone6Plus, .iPhoneX:
            font = font.withSize(font.pointSize + 0)
            break
        default:
            font = font.withSize(font.pointSize)
        }
    }
}
