//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Luiz on 22/06/20.
//  Copyright © 2020 Zennit. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    // MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextFeld: UITextField!
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    // MARK: - Construtor
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction func adicionarItem(_ sender: Any) {
        guard let nome = nomeTextFeld.text, let calorias = caloriasTextField.text else { return }
        guard let numeroDeCalorias = Double(calorias) else { return }
        
        let item = Item(nome: nome, calorias: numeroDeCalorias)
        delegate?.add(item)
        
        navigationController?.popViewController(animated: true)
    }
    
    
}
