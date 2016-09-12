//
//  Items.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 11.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

class Espresso : Drink {
    var description: String
    
    init() {
        self.description = "Espresso"
    }
    
    func calculatePrice() -> Double {
        return 1.99
    }
}

class StarCafeSpecial : Drink {
    var description: String
    init() {
        description = "StarCafe special coffee"
    }
    
    func calculatePrice() -> Double {
        return 0.89
    }
}

class HardFired : Drink {
    var description: String
    init() {
        description = "Hard fired coffee"
    }
    
    func calculatePrice() -> Double {
        return 0.99
    }
}

class OutOfCaffeine : Drink {
    var description: String
    init() {
        description = "Without caffeine coffee"
    }
    
    func calculatePrice() -> Double {
        return 1.05
    }
}


