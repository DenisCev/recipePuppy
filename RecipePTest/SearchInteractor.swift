//
//  SearchInteractor.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright (c) 2018 Denis Menendez. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import Alamofire

final class SearchInteractor {
    fileprivate let _searchService = SearchService()
}

// MARK: - Extensions -

extension SearchInteractor: SearchInteractorInterface {

    @discardableResult
    internal func getSearchResults(with searchQuery:String, _ completion: @escaping SearchListCompletionBlock) -> DataRequest {

        return _searchService.getSearchResults(with:searchQuery, completion)
    }

}
