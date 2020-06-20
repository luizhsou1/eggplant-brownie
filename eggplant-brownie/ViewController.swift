//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Luiz on 20/06/20.
//  Copyright © 2020 Zennit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adicionar(_ sender: Any) {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        
        print("Comi \(nome) e fiquei com felicidade \(felicidade)")
    }
    
}

