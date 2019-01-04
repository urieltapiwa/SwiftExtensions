//
//  DecimalExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation

public extension Decimal {
    var number: NSDecimalNumber { return NSDecimalNumber(decimal: self) }
}
