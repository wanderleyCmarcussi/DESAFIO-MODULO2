//
//  Book.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation


class Book {
    var title: String
    var author: String
    var isbn: String
    var stock: Int
    var price: Double
    var language: String
    
    init(title: String, author: String, isbn: String, stock: Int, price: Double, language: String) {
        self.title = title
        self.author  = author
        self.isbn   = isbn
        self.stock = stock
        self.price  = price
        self.language = language
    }
    
    
    
    
}
