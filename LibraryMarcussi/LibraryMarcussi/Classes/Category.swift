//
//  Category.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

//enum classBook {
//    case "iOS"
//    case "Android"
//    case "Web"
//    case "Others"
//}


class Category {
    var name: String
    var books: [Book]
    
    init(name: String, books: [Book]) {
        self.name = name
        self.books = books
        
    }
    
}
