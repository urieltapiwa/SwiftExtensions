//
//  UIDeviceExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UIDevice {
    
    var iPhone: Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }
    
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhone6
        case iPhone6Plus
        case iPhoneX
        case iPhoneXr
        case iPhoneXsMax
        case Unknown
    }
    
    public var screenType: ScreenType {
        guard iPhone else { return .Unknown}
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6
        case 2208:
            return .iPhone6Plus
        case 2436:
            return .iPhoneX
        case 1792:
            return .iPhoneXr
        case 2688:
            return .iPhoneXsMax
        default:
            return .Unknown
        }
    }

    ///define device type attributes for iPhone 4 or below
    static var IS_IPHONE_4_OR_LESS: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone && UIScreen.SCREEN_MAX_LENGTH < 568.0
    }
    ///define device type attributes for iPhone 5
    static var IS_IPHONE_5: Bool {
        return current.userInterfaceIdiom == .phone && UIScreen.SCREEN_MAX_LENGTH == 568.0
    }
    ///define device type attributes for iPhone 6
    static var IS_IPHONE_6: Bool {
        return current.userInterfaceIdiom == .phone && UIScreen.SCREEN_MAX_LENGTH == 667.0
    }
    ///define device type attributes for iPhone 6S
    static var IS_IPHONE_6S: Bool {
        return current.userInterfaceIdiom == .phone && UIScreen.SCREEN_MAX_LENGTH == 736.0
    }
    ///define device type attributes for iPad
    static var IS_IPAD: Bool {
        return current.userInterfaceIdiom == .pad && UIScreen.SCREEN_MAX_LENGTH >= 1024.0
    }
    ///define device type attributes for iPad Pro
    static var IS_IPAD_PRO: Bool {
        return current.userInterfaceIdiom == .pad && UIScreen.SCREEN_MAX_LENGTH >= 1366
    }
}
