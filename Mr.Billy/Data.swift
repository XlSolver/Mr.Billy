//
//  Data.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI

struct Spending: Identifiable
{
    var id = UUID()
    var location: String
    var value: String
    var date: Date
    var category: String
    
//    init(id: UUID = UUID(), location: String, value: Float, date: Date, category: String) {
//        self.id = id
//        self.location = location
//        self.value = value
//        self.date = date
//        self.category = category
//    }
    
}

class SpendingData: ObservableObject {
    var newspendings =
    [
        Spending(location: "Location",value: "Value",date: Date(),category: "Category"),
        Spending(location: "Napoli", value: "22", date: Date(), category: "Food")
    ]
    
    
//    func add(new: Spending ) {
//        newspendings.append(new)
//    }
}

var spendingData = SpendingData()

//Modifiche Ciro

struct Travel : Identifiable {
  
    var id = UUID ()
    var travelName: String
    var datesArr: Date             //datapicker
    var datesDep: Date
    var imageName: String      //foto da decidere come in che modo i dont know
        
}




class SharedData: ObservableObject {
    @Published   var travels = [
        Travel(travelName: "Outcave", datesArr: Date.now, datesDep: Date.now, imageName: "outcave"),
        Travel(travelName: "Paris", datesArr: Date.now, datesDep: Date.now, imageName: "parismrbilly"),
        Travel(travelName: "Madrid", datesArr: Date.now,datesDep: Date.now, imageName: "madridmrbilly"),
        Travel(travelName: "London", datesArr: Date.now, datesDep: Date.now, imageName: " londonmrbilly")
        
        
    ]
    
    
}
var sharedData = SharedData()




