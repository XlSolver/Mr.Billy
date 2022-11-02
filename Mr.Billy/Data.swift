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
    @Published var newspendings =
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
    var address: String
    var budget: String
    var imageName: String      //foto da decidere come in che modo i dont know
        
}




class SharedData: ObservableObject {
    @Published   var travels = [
        Travel(travelName: "Outcave", datesArr: Date.now, datesDep: Date.now, address: "via Claudio, 18 con lode", budget:"10000€", imageName: "outcave"),
        Travel(travelName: "Paris", datesArr: Date.now, datesDep: Date.now, address: "194 Jard. de l'Arche",budget:"6200€", imageName: "paris"),
        Travel(travelName: "Madrid", datesArr: Date.now,datesDep: Date.now, address: "Corso FrancyFranKo, 90", budget:"7300€",imageName: "madrid"),
        Travel(travelName: "London", datesArr: Date.now, datesDep: Date.now, address: "London SW1A 1AA, UK", budget:"25000£",imageName: "london")
        
        
    ]
    
    
}
var sharedData = SharedData()

