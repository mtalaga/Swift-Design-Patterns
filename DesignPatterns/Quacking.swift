//
//  Quacking.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 04.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol QuackingInterace {
    func quack()
}

class Quack: QuackingInterace {
    func quack() { print ("Quack, Quack") }
}

class Squeak: QuackingInterace {
    func quack() { print ("SQUEAKING!") }
}

class DontQuack: QuackingInterace {
    func quack() { print("Can't Quack!") }
}