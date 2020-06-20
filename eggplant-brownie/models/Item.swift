//
//  Item.swift
//  eggplant-brownie
//
//  Created by Luiz on 20/06/20.
//  Copyright © 2020 Zennit. All rights reserved.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
