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
    @StateObject var myData = expensesStore()
    @State private var showingSheet = false
    @State var budget : Float = 100
    @State var spesa : Float = 0
    
    @State var newspendingviewispresented = false
    
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
                    .onTapGesture {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()
                    }
                    .sheet(isPresented: $showingSheet)
                {
                    editBudgetViewModal()
                        .presentationDetents([.medium])
                }
                
                
                
                ScrollView{
                    ForEach(myData.expenses) {row in
                        VStack{
                            HStack(spacing: 10){
                                Text("\(row.place)")
                                Spacer()
                                Text("-"+"\(row.howMuch)"+"€")
                            }.padding()
                            Divider()
                        }
                    }
                }
            }.navigationTitle("Budget")
             .sheet(isPresented: $newspendingviewispresented) {
                    SpendingView()
                }
                .toolbar {
                    ToolbarItem {
                        HStack {
                            Button {
                                spesa += 5
                                print("aggiunta spesa rapida")
                            } label: {
                                Image(systemName: "doc.badge.plus")
                            }
                            Button {
                                newspendingviewispresented.toggle()
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                    }
                }
        }
        
    }
}

