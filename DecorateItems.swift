//
//  DecorateItems.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 11.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

class Chocolate : IngredientDecorator {
    var drink: Drink
    var description: String {
        set(description) { self.description = description}
        get {return drink.description + ", Chocolate"}}
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    func calculatePrice() -> Double {
        return 0.2 + drink.calculatePrice()
    }
    

}

class SoyMilk : IngredientDecorator {
    var drink: Drink
    var description: String {
        set(description) {self.description = description}
        get {return drink.description + " ,Soy Milk"}
    }
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    func calculatePrice() -> Double {
        return 0.15 + drink.calculatePrice()
    }
}

class Milk : IngredientDecorator {
    var drink: Drink
    var description: String {
        set(description) {self.description = description}
        get {return drink.description + " ,Milk"}
    }
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    func calculatePrice() -> Double {
        return 0.1 + drink.calculatePrice()
    }
}

class Creme : IngredientDecorator {
    var drink: Drink
    var description: String {
        set(description) {self.description = description}
        get {return drink.description + " ,Creme"}
    }
    
    init(drink: Drink) {
        self.drink = drink
    }
    
    func calculatePrice() -> Double {
        return 0.1 + drink.calculatePrice()
    }
}