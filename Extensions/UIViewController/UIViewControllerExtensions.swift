//
//  UIViewControllerExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
    /**
     Method to dismiss a view controller
     - parameters:
     - timer: Timer
     */
    @objc func dismissViewController(timer: Timer) {
        let viewController = timer.userInfo as! UIViewController
        if (viewController.isViewLoaded && (viewController.view.window != nil)) {
            viewController.dismiss(animated: true, completion: nil)
        }
    }
    /**
     Method to show the alert message with TOT
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - timeout: Double
     
     */
    func presentWithTOT(_ title: String, message: String, timeout: Double, preferredStyle: UIAlertControllerStyle) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        if (timeout != 0.0) {
            Timer.scheduledTimer(timeInterval: timeout, target: self, selector: #selector(dismissViewController), userInfo: alertController, repeats: false)
        }
        present(alertController, animated: true, completion: nil)
    }
    
    /**
     Method to show the alert message with TOT
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - timeout: Double
     - done: String
     */
    
    func presentWithTOT(_ title: String, message: String, timeout: Double, preferredStyle: UIAlertControllerStyle, completionHandler: @escaping (_ done: String) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        if (timeout != 0.0) {
            Timer.scheduledTimer(timeInterval: timeout, target: self, selector: #selector(dismissViewController), userInfo: alertController, repeats: false)
        }
        present(alertController, animated: true, completion: {
            completionHandler("done")
        })
    }
    
    /**
     Method to show the alert message
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - actionTitle: String
     */
    func showAlert(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionTitle: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction(title: actionTitle, style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    /**
     Method to show the alert message with a text field
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - actionTitle: String
     - text: String
     */
    func showAlertWithTextField(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionTitle: String, completionHandler: @escaping (_ text: String?) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: { (cancel) in
            
        }))
        alertController.addAction(UIAlertAction.init(title: actionTitle, style: .default, handler: { (_) in
            completionHandler((alertController.textFields?.first?.text)!)
        }))
        alertController.addTextField { (textField) in
            
            
        }
        self.present(alertController, animated: true, completion: nil)
    }
    
    /**
     Method to show the alert message with a Action
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - actionTitle: String
     - done: Bool
     */
    func showAlertWithAction(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionTitle: String, completionHandler: @escaping (_ done: Bool) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction(title: actionTitle, style: .default, handler: {
            _ in
            completionHandler(true)
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    ///Show alert with Icon
    func showAlertWithIcon(title: String!, message: String, imageName: String, preferredStyle: UIAlertControllerStyle, actionTitle: String, completionHandler: @escaping (_ done: Bool) -> ()) {
        let alertController = UIAlertController(title: title + "\n\n\n", message:
            message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: actionTitle, style: .default, handler: {
            _ in
            completionHandler(true)
        }))
        let imgTitle = UIImage(named:imageName+".png")
        let imgViewTitle = UIImageView(frame: CGRect(x: 115, y: 50, width: 35, height: 45))
        imgViewTitle.image = imgTitle
        
        alertController.view.addSubview(imgViewTitle)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
    /**
     Method to show the alert message with an action
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - actionTitle: String
     - done: Bool
     */
    func showActionAlert(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionYesTitle: String, actionNoTitle: String , completionHandler: @escaping (_ done: Bool) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction(title: actionYesTitle, style: .default, handler: {
            _ in
            completionHandler(true)
        }))
        
        alertController.addAction(UIAlertAction(title: actionNoTitle, style: .cancel, handler: {
            _ in
            completionHandler(false)
        }))
        self.present(alertController, animated: true, completion: nil)
    }
    
    /**
     Method to show the alert message with a textfield
     - parameters:
     - title: String
     - message: String
     - preferredStyle: UIAlertControllerStyle
     - actionTitle: String
     - done: Any
     */
    func showActionAlertWithTextField(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionYesTitle: String, actionNoTitle: String , completionHandler: @escaping (_ done: Any) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction(title: actionYesTitle, style: .default, handler: {
            _ in
            completionHandler((alertController.textFields?.first?.text)!)
        }))
        
        alertController.addAction(UIAlertAction(title: actionNoTitle, style: .cancel, handler: {
            _ in
            completionHandler(false)
        }))
        alertController.addTextField { (textField) in
            print("Verification Code is: ",textField.text!)
        }
        self.present(alertController, animated: true, completion: nil)
    }
    
    func showActionAlertWith2Actions(title: String!, message: String, preferredStyle: UIAlertControllerStyle, actionYesTitle: String, actionNoTitle: String , completionHandler: @escaping (_ done: Bool) -> ()) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        alertController.addAction(UIAlertAction(title: actionYesTitle, style: .default, handler: {
            _ in
            
        }))
        
        alertController.addAction(UIAlertAction(title: actionNoTitle, style: .cancel, handler: {
            _ in
            completionHandler(false)
        }))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    ///Method definition of the back view controller
    func backViewController() -> UIViewController? {
        if let stack = self.navigationController?.viewControllers {
            for i in ((0 + 1)...stack.count+1).reversed() {
                print("old stack value : ",i)
                if(stack[i] == self) {
                    return stack[i-1]
                }
            }
            
            for i in (0 ..< stack.count+1).reversed() {
                print("new stack value : ",i)
            }
        }
        return nil
    }
}
