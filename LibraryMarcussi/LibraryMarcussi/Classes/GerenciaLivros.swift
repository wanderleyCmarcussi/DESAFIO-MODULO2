//
//  GerenciaLivros.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 30/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class GerenciaLivros {
   
    static let shared: GerenciaLivros = GerenciaLivros()
    private var livros: [Book]
    
    
    private init() {
        self.livros = []
    }
    
    /*
      **** Funçao para checar sessoes
    */
    
    func checkContainsSections() -> Bool {
        if self.livros.count > 0  {
            return true
        }
        
        return false
    }
    
    /*
        *** Funcao para adcionar Livro
    */
    
    
    func adicionaLivro (livro: Book) {
        livros.append(livro)
    }
    
    func retornarLivros() -> [Book]{
        return livros
    }
    
    func deletaLivro(index: Int) {
        self.livros.remove(at: index)
    }
    
}
