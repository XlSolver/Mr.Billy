//
//  BudgetView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI
import Charts

struct BudgetView: View {
    var body: some View {
        NavigationView{
            ZStack{
//                graph.circle //
//                    .frame(width: 320, height: 320)
//                    .position(x:196.5,y:200)
//                    .foregroundColor(.accentColor)
//                    .shadow(radius: 7)
//                graph.circle //inner circle
//                    .frame(width: 280, height: 280)
//                    .position(x:196.5,y:200)
//                    .foregroundColor(.white)
//                    .shadow(radius: 7)
                MyShape()
                    .foregroundColor(.accentColor)

                Text(remBudgetPercentageString+"%")
                    .bold()
                    .padding(.bottom,200)
                    .navigationTitle("Budget")
                    .font(.title)
            }
        }
    }
    
    struct BudgetView_Previews: PreviewProvider {
        static var previews: some View {
            BudgetView()
        }
    }
}
