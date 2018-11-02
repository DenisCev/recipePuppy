//
//  ErrorApi.swift
//  RecipePTest
//
//  Created by Denis Menendez on 20/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Foundation
import Alamofire

extension Error {
    
    var message: String? {
        if self is AFError {
            return "Unknown error"
        } else if let error = self as? APIError {
            return error.localizedDescription
        } else {
            return self.localizedDescription
        }
    }
    
}
