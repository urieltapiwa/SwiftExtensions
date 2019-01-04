//
//  URLRequestExtensions.swift
//  Extensions
//
//  Created by Uriel Tapiwa Munjanga on 18/10/2018.
//  Copyright © 2018 Green Enterprise Solutions. All rights reserved.
//

import Foundation

public extension URLRequest {
    ///Define API authorization
    mutating func setAuthorizationHeader(username: String, password: String){
        guard let data = "\(username):\(password)".data(using: String.Encoding.utf8) else { print("Error setting authorization username and password"); return }
        
        let base64 = data.base64EncodedString(options: [])
        self.setValue("Basic \(base64)", forHTTPHeaderField: "Authorization")
    }
}
