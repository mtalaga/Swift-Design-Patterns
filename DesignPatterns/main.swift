//
//  main.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 04.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

let wd : WildDuck = WildDuck()
wd.fly()
wd.quack()

var wdata: WeatherData = WeatherData()
var curr: ShowCurrentData = ShowCurrentData(subject: wdata)
var avg: ShowAvgData = ShowAvgData(subject: wdata)

wdata.setData(30.9, hum: 65, press: 1013.4)
wdata.setData(25.4, hum: 73, press: 1003.6)


var espresso: Drink = Espresso()
print ("\(espresso.description) \(espresso.calculatePrice())")

var hardFired: Drink = HardFired()
hardFired = Chocolate(drink: hardFired)
hardFired = Chocolate(drink: hardFired)
hardFired = Creme(drink: hardFired)

print("\(hardFired.description) \(hardFired.calculatePrice())")