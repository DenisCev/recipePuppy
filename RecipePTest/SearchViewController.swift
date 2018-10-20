//
//  SearchViewController.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright (c) 2018 Denis Menendez. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class SearchViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: SearchPresenterInterface!
    
    // MARK: - Outlets -

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

}

// MARK: - Extensions -

extension SearchViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        presenter.didSelectSearchAction(
            with: searchBar.text
        )
    }
}

extension SearchViewController: SearchViewInterface {
    internal func reloadData() {
        //DispatchQueue.main.async {
            self.tableView.reloadData()
        //}
    }

  
}

extension SearchViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as! SearchCell
        let item = presenter.item(at: indexPath)
        cell.configure(with: item)
        return cell
    }
    
}

extension SearchViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        presenter.didSelectItem(at: indexPath)
    }
}

