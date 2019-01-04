//
//  UIScreenExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UIScreen
{
    ///Immutable variable for screen width
    static var SCREEN_WIDTH: CGFloat {
        return UIScreen.main.bounds.size.width
    }
    ///Immutable variable for screen height
    static var SCREEN_HEIGHT: CGFloat {
        return UIScreen.main.bounds.size.height
    }
    ///Immutable variable for screen maximum length
    static var SCREEN_MAX_LENGTH: CGFloat {
        return max(SCREEN_WIDTH, SCREEN_HEIGHT)
    }
    ///Immutable variable for minimum screen length
    static var SCREEN_MIN_LENGTH: CGFloat {
        return min(SCREEN_WIDTH, SCREEN_HEIGHT)
    }
}
