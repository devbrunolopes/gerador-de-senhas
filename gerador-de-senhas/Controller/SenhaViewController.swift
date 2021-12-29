//
//  SenhaViewController.swift
//  gerador-de-senhas
//
//  Created by Bruno Lopes on 28/12/21.
//

import UIKit

class SenhaViewController: UIViewController {

    @IBOutlet weak var senhaTextView: UITextView!
    
    var letrasMaiusculas: Bool!
    var letrasMinusculas: Bool!
    var caracteresEspeciais: Bool!
    var numeros: Bool!
    var totalCaracteres: Int = 10
    
    var passwordBrain: PasswordBrain!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordBrain = PasswordBrain(letrasMaiusculas: letrasMaiusculas, letrasMinusculas: letrasMinusculas, caracteresEspeciais: caracteresEspeciais, numeros: numeros, totalCaracteres: totalCaracteres)
        
        
        let password = passwordBrain.generatePassword()
        senhaTextView.text = password
        
    }
    
    @IBAction func botaoGerarNovaSenhaPressionado(_ sender: UIButton) {
        let password = passwordBrain.generatePassword()
        senhaTextView.text = password
    }
    
    
    @IBAction func botaoCopiarPressionado(_ sender: UIButton) {
        UIPasteboard.general.string = senhaTextView.text
    }
    

    
}
