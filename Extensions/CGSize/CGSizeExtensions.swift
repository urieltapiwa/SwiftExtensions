//
//  CGSizeExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension CGSize {
    /**
     Method defines device resize ratios
     - parameters:
     - toSize: CGSize
     
     - returns: CGSize
     
     */
    func resizeFill(toSize: CGSize) -> CGSize {
        
        let aspectOne = self.height / self.width
        let aspectTwo = toSize.height / toSize.width
        
        let scale : CGFloat
        
        if aspectOne < aspectTwo {
            scale = self.height / toSize.height
        } else {
            scale = self.width / toSize.width
        }
        
        let newHeight = self.height / scale
        let newWidth = self.width / scale
        return CGSize(width: newWidth, height: newHeight)
    }
}
