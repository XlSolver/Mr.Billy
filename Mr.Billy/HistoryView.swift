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
            VStack {
                HStack(alignment: .top,spacing: 10) {
                    Text("Date").bold()
                        .padding(.leading)
                    Text("Location").bold()
                        .padding(.leading)
                    Text("Value").bold()
                        .padding(.leading)
                    Text("Category").bold()
                        .padding(.leading)
                }
                    List {
                        ForEach(myData.newspendings) { spend in
                            HStack(alignment: .center, spacing: 10) {
                                Text(spend.date,style: .date)
                                Text(spend.location)
                                    .padding(.leading)
                                HStack() {
                                    Text("€")
                                        .padding(.leading)
                                    Text(spend.value)
                                        .padding(.trailing)
                                }
                                    Text(spend.category)
                                        .padding(.leading)
                                //                        Text(dateFormatter.string(from: spend.date))
                            }
                        }
                        .onDelete(perform: delete)
                    }
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
