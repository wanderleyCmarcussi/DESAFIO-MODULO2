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
    
    
    
    //    var imagensCarro:[String] = ["bmw","bugatti","audi","ferrari","mercedes"]
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // limpa todas as labels
        self.tituloLabel.text = livro?.title
        self.categoriaLabel.text = livro?.category
        self.autorLabel.text = livro?.author
        self.isbnLabel.text = livro?.isbn
        self.idiomaLabel.text = livro?.language
        self.precoLabel.text = livro?.price
        //self. text = ""
        
        
      //  self.imagensTableView.delegate = self
      //  self.imagensTableView.dataSource = self
        
        
        
//            @IBAction func voltarButton(_ sender: UIButton) {
//                self.dismiss(animated: true)
//            }
//            @IBAction func cadastrarButton(_ sender: UIButton) {
//                let carro = Carro(nome: nomeTF.text!, nomeImagem: labelCarro.text!, ano: Int(anoTF.text!)!, km: Float(kmTF.text!)!, preco: Float(precoTF.text!)!)
//                VeiculoManager.shared.adicionaVeiculo(veiculo: carro)
//                self.dismiss(animated: true)
//
//            }
        //
        //}
        //
        //extension CadastraCarroViewController: UITableViewDataSource, UITableViewDelegate {
        //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //        return self.imagensCarro.count
        //    }
        //
        //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //        let cell = tableView.dequeueReusableCell(withIdentifier: "imagemCell", for: indexPath)
        //        cell.textLabel?.text = self.imagensCarro[indexPath.row]
        //        return cell
        //    }
        //
        //    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        self.labelCarro.text = self.imagensCarro[indexPath.row]
        //    }
        
        
}
}
