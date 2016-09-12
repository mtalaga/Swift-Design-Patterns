//
//  Observer.swift
//  DesignPatterns
//
//  Created by Michał Talaga on 05.07.2016.
//  Copyright © 2016 Michal Talaga. All rights reserved.
//

import Foundation

protocol Observer {
    func refresh(temp: Float, hum: Float, press: Float)
}

protocol ShowItem {
    func showItem()
}

class ShowCurrentData : Observer, ShowItem {
    
    var subject: Subject?
    var temp: Float?
    var hum: Float?
    
    init(subject: Subject) {
        self.subject = subject
        subject.registerObsever(self)
    }
    
    func refresh(temp: Float, hum: Float, press: Float) {
        self.temp = temp
        self.hum = hum
        showItem()
    }
    
    func showItem() {
        print("Current data \(temp) celsius and \(hum) humidity % ")
    }
}

class ShowAvgData: Observer, ShowItem {
    var subject: Subject?
    var temp: Float?
    var hum: Float?
    
    init(subject: Subject) {
        self.subject = subject
        self.temp = 0
        self.hum = 0
        subject.registerObsever(self)
    }
    
    func refresh(temp: Float, hum: Float, press: Float) {
        self.temp = (self.temp! + temp) / 2
        self.hum = (self.hum! + hum) / 2
        showItem()
    }
    
    func showItem() {
        print("Avg data \(temp) celsius and \(hum) humidity % ")
    }
}
