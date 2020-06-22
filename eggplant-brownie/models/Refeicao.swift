//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Luiz on 20/06/20.
//  Copyright © 2020 Zennit. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    // MARK: - Atributos
    let nome: String
    let felicidade: Int
    let itens: Array<Item> // Quando inicializo com um valor, não peciso colocar no construtor
    
    // MARK - Construtor
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    // MARK - Metódos
    func totalDeCalorias() -> Double {
        var total = 0.0
        for item in itens {
            total += item.calorias
        }
        return total
    }
    
    func detalhes() -> String {
        var msg = "Felicidade: \(felicidade)"
        for item in itens {
            msg += ", \(item.nome) - calorias: \(item.calorias)"
        }
        return msg
    }
}
