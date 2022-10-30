//
//  Model.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 29/10/22.
//

import SwiftUI

struct Expenses: Identifiable {
    let id = UUID()
    var place: String
    var howMuch: Float
}

class expensesStore: ObservableObject {
        
    @Published var expenses: [Expenses] = [
        Expenses(place:"Bar Gianni", howMuch:4.40),
        Expenses(place:"Bar Gianni", howMuch:4.40),
        Expenses(place:"Bar Gianni", howMuch:4.40),
        Expenses(place:"Bar Gianni", howMuch:4.40)
        ]
}
