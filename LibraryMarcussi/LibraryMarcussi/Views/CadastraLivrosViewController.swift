//
//  CadastraLivrosViewController.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 23/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class CadastraLivrosViewController: UIViewController {

    // **
    // **** Criar as Outlet's
    // **
    
    //@IBOutlet var tituloText: UIView!
    @IBOutlet weak var AutorText: UITextField!
    @IBOutlet weak var isbnText: UITextField!
    @IBOutlet weak var idiomaText: UITextField!
    @IBOutlet weak var precoText: UITextField!
    
    @IBOutlet weak var tituloText: UITextField!
    
    @IBOutlet weak var categoriaSegment: UISegmentedControl!
    
    //@IBAction func categoriaSeg(_ sender: UISegmentedControl) {
    //}
    
//    var imagensCarro:[String] = ["bmw","bugatti","audi","ferrari","mercedes"]



    //**
    // **** Iniciar View Did Load
    // **

        override func viewDidLoad() {
        super.viewDidLoad()
            
            self.tituloText.text = ""
            self.AutorText.text = ""
            self.isbnText.text = ""
            self.idiomaText.text = ""
            self.precoText.text = ""
            self.categoriaSegment.selectedSegmentIndex = -1
            
            
    }

    

    
    // **
    // **** Botão de Voltar
    
        @IBAction func voltarButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    /*
        **
        **** Botão Cadastrar
        **
    */


    @IBAction func cadastrarButton(_ sender: UIButton) {
//

        let livro = Book(
            title: self.tituloText.text!,
            author: self.AutorText.text!,
            isbn: self.isbnText.text!,
            stock: "1",
            price: self.precoText.text!,
            language: self.idiomaText.text!,
            category: "Outros")
    
        

        GerenciaLivros.shared.adicionaLivro(livro: livro)
        self.dismiss(animated: true)
//
//    }
//
    }



}
