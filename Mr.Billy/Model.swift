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
        Expenses(place:"Bar Ciro", howMuch:4.20),
        Expenses(place:"Bar Veronica", howMuch:7.22),
        Expenses(place:"Bar Rujjal", howMuch:8.99),
        Expenses(place:"Bar Salvatore", howMuch:5.30),
        Expenses(place:"Bar PierMattia", howMuch:15.19),
        Expenses(place:"Bar Vincenzo", howMuch: 1.10)
        ]
}
