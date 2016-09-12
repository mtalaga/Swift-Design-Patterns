//
//  Pizzeria.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 05.09.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol Pizzeria {
    func makePizza(type: String) -> Pizza?
}

extension Pizzeria {
    
    func orderPizza(type: String) -> Pizza? {
        if let pizza = makePizza(type) {
            pizza.prepare()
            pizza.bake()
            pizza.slice()
            pizza.pack()
            return pizza
        } else {
            return nil
        }
    }
}

class PizzeriaItaly: Pizzeria {
    func makePizza(type: String) -> Pizza? {
        switch type {
            case "cheese": return ItalyCheesePizza()
            case "vegan": return ItalyVeganPizza()
            case "peperoni": return ItalyPeperoniPizza()
        default: return nil
        }
    }
}