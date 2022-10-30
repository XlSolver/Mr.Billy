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
    var value: Float
    var date: Date
    var category: String
    
}

class SpendingData: ObservableObject {
    var newspendings =
    [
        Spending(location: "Description", value: 00.00, date: Date() , category: "Category")
    ]
    
    
    func add(new: Spending ) {
        newspendings.append(new)
    }
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




