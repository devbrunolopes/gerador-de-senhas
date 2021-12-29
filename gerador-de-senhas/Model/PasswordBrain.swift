//
//  PasswordBrain.swift
//  gerador-de-senhas
//
//  Created by Bruno Lopes on 28/12/21.
//

import Foundation

class PasswordBrain {
    
    var letrasMaiusculas: Bool
    var letrasMinusculas: Bool
    var caracteresEspeciais: Bool
    var numeros: Bool
    var totalCaracteres: Int
    
    private let maiusculas = "ABCDEFGHIJKLMNOPQRTSUVWXYZ"
    private let minusculas = "abcdefghijklmnopqrstuvwxyz"
    private let numbers = "0123456789"
    private let especiais = "!@#$%&*()_?|~^-+[]{}´`:;/<>,."
    
    init(letrasMaiusculas: Bool, letrasMinusculas: Bool, caracteresEspeciais: Bool, numeros: Bool, totalCaracteres: Int) {
        
        var quantidadeCaracteres = min(totalCaracteres, 15)
        quantidadeCaracteres = max(quantidadeCaracteres, 1)
        
        self.letrasMaiusculas = letrasMaiusculas
        self.letrasMinusculas = letrasMinusculas
        self.caracteresEspeciais = caracteresEspeciais
        self.numeros = numeros
        self.totalCaracteres = quantidadeCaracteres
        
    }
    
    func generatePassword() -> String {
        
        var senha: String = ""
        
        if letrasMaiusculas {
            senha += maiusculas
        }
        
        if letrasMinusculas {
            senha += minusculas
        }
        
        if numeros {
            senha += numbers
        }
        
        if caracteresEspeciais {
            senha += especiais
        }
        
        
        
        let senhaArray = Array(senha)
        var password = ""
        for _ in 1...totalCaracteres {
            let index = Int(arc4random_uniform(UInt32(senhaArray.count)))
            password += String(senhaArray[index])
        }
        
        return password
    }
    
}
