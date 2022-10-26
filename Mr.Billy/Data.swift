//
//  Data.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI
import Charts
//Display a circle chart that represent the remaining budget in the "budget" view

struct CircleChart: Identifiable
{
    var circle: BasicChartSymbolShape = .circle
    var budget: Float = 5000.00
    var moneySpent: Float = 100.75
    var id = UUID()
}
var data = [10.30, 55.30, 13.75, 30.05]
var x = CircleChart()
var remBudget: Float  = x.budget-x.moneySpent//remaining budget
var remBudgetString = String(remBudget)
var remBudgetPercentage = (remBudget*100)/x.budget
var remBudgetPercentageString = String(Int32(remBudgetPercentage))
var graph: CircleChart
{
    //datas comes from a local database, this is just an example
    .init(circle: .circle, budget: x.budget, moneySpent: x.moneySpent)
}

//structure to build an arc -> still need to sync this with the budget
struct MyShape : Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()

        p.addArc(center: CGPoint(x: 200, y:200), radius: 130, startAngle: .degrees(270), endAngle: .degrees(30), clockwise: false)

        return p.strokedPath(.init(lineWidth: 10))
    }
}
