//
//  StarCafe.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 06.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol Drink {
    var description: String {get set}
    
    func calculatePrice() -> Double
}

protocol IngredientDecorator : Drink {
    var description: String {get}
}





