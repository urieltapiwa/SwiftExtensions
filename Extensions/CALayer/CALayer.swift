//
//  CALayer.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension CALayer {
    /**
     Method configures gradient background colors
     
     - parameters:
     - colors: CGColor
     
     */
    func configureGradientBackground(colors:CGColor...){
        
        let gradient = CAGradientLayer()
        
        let maxWidth = (UIDevice.IS_IPAD) ? UIScreen.SCREEN_MAX_LENGTH : UIScreen.SCREEN_MIN_LENGTH
        let squareFrame = CGRect(origin: self.bounds.origin, size: CGSize.init(width: maxWidth, height: UIScreen.SCREEN_MAX_LENGTH))
        gradient.frame = squareFrame
        
        gradient.colors = colors
        
        self.insertSublayer(gradient, at: 0)
    }
}
