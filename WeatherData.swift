//
//  WeatherData.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 05.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol Subject {
    func registerObsever(observer: Observer)
    func deleteObserver(observer: Observer)
    func setChanged()
    func notifyObservers()
}

class WeatherData : Subject {
    var observers : [Observer]
    var temp: Float?
    var hum: Float?
    var press: Float?
    
    init() {
        self.observers = [Observer]()
    }
    
    func registerObsever(observer: Observer) {
        observers.append(observer)
    }
    
    func deleteObserver(observer: Observer) {
        //observers = observers.filter(){$0 !== observer}
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.refresh(temp!, hum: hum!, press: press!)
        }
    }
    
    func setChanged() {
        //notifyObservers()
    }
    
    func setData(temp: Float, hum: Float, press: Float) {
        self.temp = temp
        self.hum = hum
        self.press = press
        notifyObservers()
    }
}