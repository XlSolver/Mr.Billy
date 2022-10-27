//
//  SpendingView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI

struct SpendingView: View {
    @State var location = ""
    @State var value = ""
    @State var date = Date()

    @State private var categoryindex = 0
    var categorySelection = ["Food", "Ticket","Extra"]
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Location").bold()) {
                    TextField("enter the location",text: $location)
                    //TextField(.constant(""), text: $location, placeholder: Text("Enter the location"))
                    //TextField("location", text: $location)
                    //Section(header: Text("Value")){
                    //Section(header: Text("Value")){
                    //Text("value")
                }
                Section(header: Text("value").bold()){
                    TextField("£0.00", text: $value)
                        .keyboardType(.decimalPad)
                }
                //Section(header: Text("Date")){
                DatePicker(
                    "Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
                //.datePickerStyle(.graphical)
                //}
                Section() {
                    Picker(selection: $categoryindex,label: Text("Category")) {
                        ForEach(0 ..< categorySelection.count, id: \.self) {
                            Text(self.categorySelection[$0])
                        }
                    }
                }
                Section {
                    Button(action: {
                        print("added successfully")
                        //myData.add(newspending: Spending))
                    }){
                        Image(systemName: "doc.fill.badge.plus")
                        Text("Add")
                            .padding(.horizontal,140)
                    }
                }
            }
                
            .navigationTitle("Spending")
        }
    }
}

struct SpendingView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingView()
    }
}
