//
//  SearchService.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

typealias SearchListCompletionBlock = (DataResponse<SearchModel>) -> (Void)

class SearchService: NSObject {
    
    @discardableResult
    func getSearchResults(with searchQuery:String, _ completion: @escaping SearchListCompletionBlock) -> DataRequest {
        
        let parameters: Parameters = [
            "q" : searchQuery
        ]
        
        let response = Alamofire.request(
            APIConstants.URLBase,
            method:  .get,
            parameters: parameters
            ).responseObject(completionHandler: completion)
        
        return response
    
    }
 
}
