//
//  Flying.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 04.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol FlyingInterface {
    func fly()
}

class FlyWithWings: FlyingInterface {
    func fly() { print("Flying with wings!") }
}

class DontFly: FlyingInterface {
    func fly() { print("Can't fly") }
}