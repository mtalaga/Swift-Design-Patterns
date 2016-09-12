//
//  Duck.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 04.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

class Duck {
    var quackingInterface: QuackingInterace
    var flyingInterface: FlyingInterface
    
    init(quackingInterface: QuackingInterace, flyingInterface: FlyingInterface) {
        self.quackingInterface = quackingInterface
        self.flyingInterface = flyingInterface
    }
    
    func setQuackingInterface(quackingInterface: QuackingInterace) {
        self.quackingInterface = quackingInterface
    }
    
    func setFlyingInterface(flyingInterface: FlyingInterface) {
        self.flyingInterface = flyingInterface
    }
    
    func quack() {
        quackingInterface.quack()
    }
    
    func fly() {
        flyingInterface.fly()
    }
}

class WildDuck : Duck {
    init() {
        super.init(quackingInterface: Quack(), flyingInterface: FlyWithWings())
    }
}

class GumDuck: Duck {
    init() {
        super.init(quackingInterface: DontQuack(), flyingInterface: DontFly())
    }
}

