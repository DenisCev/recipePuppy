//
//  SearchService.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Foundation
import Alamofire

typealias SearchListCompletionBlock = (DataResponse<SearchModel>) -> (Void)

class SearchService: NSObject {
    
    @discardableResult
    func getSearchResults(with searchQuery:String, _ completion: @escaping SearchListCompletionBlock) -> DataRequest {
        
        let parameters: Parameters = [
            "q" : searchQuery
        ]
        
        let resp = Alamofire.request(
            APIConstants.URLBase,
            method:  .get,
            parameters: parameters
            )
        print("resp\(resp)")
        
        return resp
    
    }
 
}
