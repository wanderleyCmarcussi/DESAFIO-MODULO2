//
//  ViewController.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

    
    class ViewController: UIViewController {
 
        
        
     @IBOutlet weak var livroTableView: UITableView!
     var livro_controller: LivrosController?
     var arrayLivros:[String] = []
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            //1- inicializo o controller para poder chamar os metodos dessa camada
            self.livro_controller = LivrosController()
            
            // 2- ligo o delegate do controller para implementar o protocolo
            self.livro_controller?.delegate = self
            
            // 3- solicito que a camada Controller carregue o array de contatos para eu listar na tabela
            self.livro_controller?.pegaListaLivros()
            
            // ??   self.livroTableView.register(UINib(nibName: "CarroCell", bundle: nil), forCellReuseIdentifier: "CarroCell")

            
        }
        
        override func viewDidAppear(_ animated: Bool) {
                    livroTableView.reloadData()
        }
        
        func atualizaTabela() {
            }

        
    }
    
    
    // implementação do  ContatosControllerDelegate
    extension ViewController: LivrosControllerDelegate {
        
        func success() {
            self.livroTableView.dataSource = self
        }
        
        func failed() {
            
        }
    }
    
    extension ViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.livro_controller?.numberOfRowsInSection() ?? 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
            cell.textLabel?.text = self.livro_controller?.pegarNomeLivro(row:  indexPath.row)
            cell.detailTextLabel?.text = self.livro_controller?.pegarAuthorLivro(row: indexPath.row)
            
            return cell
        }
        


//class ListaCarrosVC: UIViewController {


//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let livroSelecionado = self.livro_controller? (row:  indexPath.row)
        self.performSegue(withIdentifier: "MostraLivrosViewController", sender: "nill") // livroSelecionado)
    }

//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let MostraLivrosViewControllervc: MostraLivrosViewController? = segue.destination as? MostraLivrosViewController
//        if let _MostraLivrosViewControllervc = MostraLivrosViewControllervc {
//            _MostraLivrosViewControllervc.tituloLabel = sender as? Book
//        }
//    }
}
