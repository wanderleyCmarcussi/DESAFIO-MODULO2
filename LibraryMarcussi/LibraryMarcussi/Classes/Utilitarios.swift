//
//  Utilitarios.swift
//  LibraryMarcussi
//
//  Created by Wanderley Marcussi on 16/06/19.
//  Copyright © 2019 Wanderley Marcussi. All rights reserved.
//

import Foundation

class Utilitarios {
    
    //SalvarObjetoString
    static func salvarObjetoString (key: String, value: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    // Pegar Objeto String
    static func pegarObjetoString(key: String) -> String? {
        
        let value =  UserDefaults.standard.string(forKey: key)
        return value
    }
    
    // Salvar Objeto - ANY
    static func salvarObjeto(key: String, value: Any) {
        
        UserDefaults.standard.set(value, forKey: key)
    }
    
    // Pegar Objeto - ANY
    static func pegarObjeto(key: String) -> Any? {
        
        let value = UserDefaults.standard.object(forKey: key)
        return value
    }
    
    
    // Salvar Dicionario
    static func salvarDicionario(dic: [String: Any], key: String) {
        
        UserDefaults.standard.set(dic, forKey: key)
    }
    
    // Pegar Dicionario
    static func pegarDicionario(key: String) {
        
        if let _dic = UserDefaults.standard.dictionary(forKey: key) {
            print(_dic)
        }
        
    }
    
    // Mostrar Dicionario
    static func mostrarDicionario(){
        print(UserDefaults.standard.dictionaryRepresentation())
    }
    
    // Remover Chave
    static func removerChave(key: String) {
        
        UserDefaults.standard.removeObject(forKey: key)
        print("removeForKey")
    }
    
    
}
