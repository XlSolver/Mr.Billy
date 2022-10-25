//
//  Data.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI
import Charts
//Display a circle chart that represent the remaining budget in the "budget" view

struct CircleChart
{
    var circle: BasicChartSymbolShape
    var budget: Int32
    var moneySpent: Int32
    var remBudget: Int32  //remaining budget
}

var graph: CircleChart
{
    .init(circle: .circle, budget: 5000, moneySpent: 35, remBudget: 4965)}

