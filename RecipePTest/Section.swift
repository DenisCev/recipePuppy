//
//  Section.swift
//  RecipePTest
//
//  Created by Denis Menendez on 20/10/18.
//  Copyright © 2018 Denis Menendez. All rights reserved.
//

import UIKit

struct Section<T> {
    var header: String?
    var footer: String?
    var items: [T] = []
    
    init(items: [T]) {
        self.items = items
    }
}
