//
//  BudgetView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI

//100
//
//50
//
//differenza = 100 - 50 = 50 -> 50%



struct BudgetView: View {
    
    @State var budget : Float = 100
    @State var spesa : Float = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 25){
                ZStack{
                    Circle()
                        .stroke(Color.gray.opacity(0.3),lineWidth: 20)
                        .frame(width: 300, height: 300)
                    Circle()
                        .trim(from: 0, to: CGFloat((budget - spesa)/100))
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                        .frame(width: 300, height: 300)
                        .animation(.default, value: (budget-spesa))
                    
                }
                .padding(.bottom, 30)
                VStack(spacing: 12){
                    Text("Total Spent")
                    Text("€\(spesa, specifier: "%.2f") of \(budget, specifier: "%.2f")")
                }.frame(width: 300, height: 80)
                
                    .background(Color.gray)
                    .cornerRadius(15)
                    .foregroundColor(.white)
//                List {
//                    ForEach()
//                }
            }.navigationTitle("Budget")
                .toolbar {
                    ToolbarItem {
                        Button {
                            spesa += 5
                            print("aggiunta spesa rapida")
                        } label: {
                            Image(systemName: "doc.badge.plus")
                        }
                    }
                }
        }
        
    }
}

