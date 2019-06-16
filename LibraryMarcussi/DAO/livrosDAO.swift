//
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation


/// Carregar o Json
class LivrosDAO {
    
     typealias completion <T> = (_ result: T, _ failure: Bool) -> Void
    
    // getListContatos
    func pegarListaBook (completion: @escaping completion<[Book?]>) {
        
        if let _path = Bundle.main.path(forResource: "livros", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: _path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let _jsonResult = jsonResult as? [Dictionary<String, AnyObject>] {
                    // do stuff
                    print("deu certo!!!")
                    print(_jsonResult)
                    
                    // carregar o combo
                    var arrayLivros: [Book] = []
                    
                    for value in _jsonResult {
                        
                        let livro: Book = Book(dic: value)
                        
                        arrayLivros.append(livro)
                    }
                    
                    completion(arrayLivros, false)
                    
                }
            } catch {
                print("deu ruim!!!")
                
                completion([], true)
            }
        }
        

    }
    
    
  
}
