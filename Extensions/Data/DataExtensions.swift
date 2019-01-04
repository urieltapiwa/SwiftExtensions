//
//  DataExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation

public extension Data {
    ///Hex coded string
    func hexEncodedString() -> String {
        return map { String(format: "%02hhx", $0) }.joined()
    }
}
