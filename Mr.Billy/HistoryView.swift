//
//  HistoryView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var myData = spendingData
//    var dateFormatter: DateFormatter
//    var expenses: Expenses
    var body: some View {
        NavigationView{
            List {
                ForEach(myData.newspendings) { spend in
                    HStack {
                        Text(spend.location)
                        Text(spend.value)
                            .padding(.leading,50)
                        Text(spend.category)
                            .padding(.leading,60)
//                        Text(dateFormatter.string(from: spend.date))

                    }
                }
                .onDelete(perform: delete)
            }
        .navigationTitle("History")
        .toolbar {
            ToolbarItem {
                Button {
                   
                }
            label: {
                Image(systemName: "arrow.down.doc.fill")
                    .resizable()
                    .frame(width: 25, height: 30)
                    .foregroundColor(.gray)
                    .padding(.trailing,10)
            }
            }
        }
            }
        }
    func delete(at offsets: IndexSet) {
        myData.newspendings.remove(atOffsets: offsets)
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        //        HistoryView(expenses)
        HistoryView()
    }
}
