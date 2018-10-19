//
//  SearchInterfaces.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright (c) 2018 Denis Menendez. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import Alamofire

enum SearchNavigationOption {
}

protocol SearchWireframeInterface: WireframeInterface {
    func navigate(to option: SearchNavigationOption)
}

protocol SearchViewInterface: ViewInterface {
    func reloadData()
}

protocol SearchPresenterInterface: PresenterInterface {
    func didSelectSearchAction(with query: String?)
    
    func numberOfSections() -> Int
    func numberOrItems(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> SearchViewItemInterface
    func didSelectItem(at indexPath: IndexPath)
    
}

protocol SearchInteractorInterface: InteractorInterface {
    @discardableResult
    func getSearchResults(with searchQuery:String,_ completion: @escaping SearchListCompletionBlock) -> DataRequest
}

protocol SearchViewItemInterface {
    var title: String? { get }
    var imageURL: URL? { get }
}