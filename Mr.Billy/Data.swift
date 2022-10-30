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







