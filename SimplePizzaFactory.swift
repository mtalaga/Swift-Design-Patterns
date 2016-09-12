//
//  SimplePizzaFactory.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 01.08.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

class SimplePizzaFactory {
    
    func makePizza(type: String) -> Pizza {
        var pizza: Pizza
        
        switch type {
            case "cheese": pizza = CheesePizza()
            case "pepperoni":  pizza = PeperoniPizza()
            case "vegan":  pizza = VeganPizza()
            default:  pizza = Pizza()
        }
        
        return pizza
    }
}