//
//  APIError.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 20/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Foundation

enum APIError: Error {
    case message(String)
    
    var localizedDescription: String {
        switch self {
        case .message(let string):
            return string
        }
    }
    
}
