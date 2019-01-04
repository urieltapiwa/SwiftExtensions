//
//  UIImageViewExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

var imageCache = NSCache<AnyObject, AnyObject>()

public extension UIImageView {
    
    ///Method that gets image from the server.
    public func imageFromServerURL(urlString: String) {
        
        self.image = nil
        
        // check for cache
        if let cachedImage = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
            self.image = cachedImage.decompressedImage
            return
        }
        ///Method coordinates a group of related network data transfer tasks, in this case getting the images.
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                imageCache.setObject(image!, forKey: urlString as AnyObject)
                // Resize and decompress image
                self.image = image?.decompressedImage
            })
            
        }).resume()
    }
}
