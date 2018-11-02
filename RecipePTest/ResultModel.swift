//
//  Result.swift
//  RecipePuppy
//
//  Created by Denis Menendez on 18/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import Foundation
import ObjectMapper

class ResultModel: Mappable{
    var title : String?
    var href : String?
    var ingredients : String?
    var thumbnail : String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        title <- map["title"]
        href <- map["href"]
        ingredients <- map["ingredients"]
        thumbnail <- map["thumbnail"]
    }
}
