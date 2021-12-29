//
//  ViewController.swift
//  gerador-de-senhas
//
//  Created by Bruno Lopes on 28/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var letrasMaiusculasSwitch: UISwitch!
    @IBOutlet weak var letrasMinusculasSwitch: UISwitch!
    @IBOutlet weak var caracteresEspeciaisSwitch: UISwitch!
    @IBOutlet weak var numerosSwitch: UISwitch!
    @IBOutlet weak var totalCaracteresTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
                
    }

    @IBAction func botaoGerarSenhaPressionado(_ sender: UIButton) {
      
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              
            let destinationVC = segue.destination as! SenhaViewController
            
            if let totalCaracteres = Int(totalCaracteresTextField.text!) {
                destinationVC.totalCaracteres = totalCaracteres
            }
            
            destinationVC.letrasMaiusculas = letrasMaiusculasSwitch.isOn
            destinationVC.letrasMinusculas = letrasMinusculasSwitch.isOn
            destinationVC.caracteresEspeciais = caracteresEspeciaisSwitch.isOn
            destinationVC.numeros = numerosSwitch.isOn
            view.endEditing(true)

    }
    
}

