//
//  WelcomeViewController.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 10/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginNomeTextField: UITextField!
    
    var preenchido: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Validar se existe alguem já cadastrado.
        if let _nomeUsuarioLibrary = Utilitarios.pegarObjetoString(key: "nomeUsuarioLibrary")  {
            
            self.loginNomeTextField.text = _nomeUsuarioLibrary
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func fazerLogin(senha: String) {
        
        if self.loginNomeTextField.text ?? "" == senha {
            
            self.performSegue(withIdentifier: "TabelaLivrosViewController", sender: nil)
            
        }else {
            print("deu ruim,senha invalida !!!")
        }
    }
    

    
    /// CLICAR NO BOTAO CONFIRMAR ACESSO

    @IBAction func confirmaAcessoButton(_ sender: UIButton) {
       
        preenchido =  self.loginNomeTextField.text ?? ""
        
        if preenchido == ""{
            print("Não temos nome preenchido")
            
            self.loginNomeTextField.text = "Não temos nome preenchido"
            return
        }
        
        if let _preenchido = Utilitarios.pegarObjetoString(key: "nomeUsuarioLibrary") {
            
            self.fazerLogin(senha: _preenchido)
            print("temos nome preenchido")
        }else {
            
            Utilitarios.salvarObjetoString(key: "nomeUsuarioLibrary", value: self.loginNomeTextField.text ?? "" )
            print(Utilitarios.pegarObjetoString(key: "nomeUsuarioLibrary") ?? "")
            self.fazerLogin(senha: self.loginNomeTextField.text ?? "")
            
        }
    }
    
}




