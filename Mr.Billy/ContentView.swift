//
//  ContentView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 24/10/22.
//

import SwiftUI
import Charts

struct ContentView: View {

    var body: some View {
        TabView{
            BudgetView()
                .tabItem() {
                    Label("Budget", systemImage: "creditcard.fill")
                }

            TravelView()
                .tabItem() {
                    Label("My Travel", systemImage: "airplane")
                }
//            HistoryView()
//                .tabItem() {
//                    Label("History", systemImage: "list.bullet.circle.fill")
//                }
        }.tint(.pink)
    }
}

struct ContentView_Previews: PreviewProvider {

    @Binding var budget: Float
    @Binding var spese: Float

    static var previews: some View {
        ContentView()
    }
}
