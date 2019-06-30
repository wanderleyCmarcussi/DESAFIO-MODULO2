//
//  MostraLivrosViewController.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 23/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit


class MostraLivrosViewController: UIViewController {
    
    var livro: Book?

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var isbnLabel: UILabel!
    @IBOutlet weak var idiomaLabel: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // limpa todas as labels
        self.tituloLabel.text = livro?.title
        self.categoriaLabel.text = livro?.category
        self.autorLabel.text = livro?.author
        self.isbnLabel.text = livro?.isbn
        self.idiomaLabel.text = livro?.language
        self.precoLabel.text = livro?.price
        
        
    }
    
    
    // **
    // **** Botão de Voltar
    
    @IBAction func voltarButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}
