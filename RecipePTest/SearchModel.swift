//
//  SearchModel.swift
//  RecipePuppy
//
//  Created by Denis Menendez  on 18/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Foundation
import ObjectMapper

class SearchModel: Mappable{
    internal var title : String?
    internal var version : Double?
    internal var href : String?
    internal var results : [ResultModel]?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        version <- map["version"]
        href <- map["href"]
        results <- map["results"]
    }
}
