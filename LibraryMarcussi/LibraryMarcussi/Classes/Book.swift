//
//  Book.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation


class Book {
    var title: String?
    var author: String?
    var isbn: String?
    var stock: String?         // var stock: Int
    var price: String?      // var price: Double
    var language: String?
    
    init(title: String, author: String, isbn: String, stock: String, price: String, language: String) {
        self.title = title
        self.author  = author
        self.isbn   = isbn
        self.stock = stock
        self.price  = price
        self.language = language
    }
    

    
    init(dic:[String:Any]) {
        
    
        self.title    = dic["title"] as? String
        self.author   = dic["author"] as? String
        self.isbn     = dic["isbn"] as? String
        self.stock    = dic["stock"] as? String
        self.price    = dic["price"] as? String
        self.language = dic["language"] as? String
        
    }
        
}
