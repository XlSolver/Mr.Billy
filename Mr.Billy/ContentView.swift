//
//  ContentView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 24/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BudgetView()
                .tabItem() {
            Label("Budget", systemImage: "creditcard.circle.fill")
            }
            
            SpendingView()
                .tabItem() {
            Label("Spending", systemImage: "dollarsign.circle.fill")
            }
            
            TravelView()
                .tabItem() {
            Label("My Travel", systemImage: "airplane.circle.fill")
            }
            
            HistoryView()
                .tabItem() {
            Label("History", systemImage: "list.bullet.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
