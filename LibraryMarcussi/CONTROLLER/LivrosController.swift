//
//  LivrosController.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 16/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation


protocol LivrosControllerDelegate: class {
    
    func success()
    func failed()
}


class LivrosController {
    
    
    weak var delegate: LivrosControllerDelegate?
    private var arrayLivros:[Book?] = []
    
    
    
    func numberOfRowsInSection() -> Int {
        
        return self.arrayLivros.count
    }
    
    // Pegar o nome do Livro
    func pegarNomeLivro(row: Int) -> String {
        
        if let _livro = self.arrayLivros[row] {
            return _livro.title ?? ""
        }
        
        return ""
    }
    
    // pegar autor do livro
    func pegarAuthorLivro(row: Int) -> String {
        
        if let _livro = self.arrayLivros[row] {
            return _livro.author ?? ""
        }
        
        return ""
    }

    // pegar autor o estoque livro
    func pegarEstoqueLivro(row: Int) -> String {
        
        if let _livro = self.arrayLivros[row] {
            return _livro.stock ?? ""
        }
        
        return ""
    }

    // Pega a lista de livros
    func pegaListaLivros () {
        
        LivrosDAO().pegarListaBook {( success, failure ) in
            
            if failure {
                print("Deu ruim na hora de carregar")
            }else{
                print("Deu certo na hora de carregar")
                self.arrayLivros = success
                self.delegate?.success()
                print(success)
            }
        }
        
    }
}


