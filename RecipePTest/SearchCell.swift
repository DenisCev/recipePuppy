//
//  SearchCell.swift
//  RecipePTest
//
//  Created by Pablo Vélez  on 19/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {
    
    @IBOutlet weak var cellTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    
    func configure(with item: SearchViewItemInterface) {
        cellTextLabel.text = item.title

    }
    
}
