//  AddTravel.swift
//  Mr.Billy
//
//  Created by Ciro Canetti on 28/10/22.
// so tropp fort anche se la parte difficile della data lha fatt Giovanni

import SwiftUI

struct AddTravel: View {
    @ObservedObject var myData = sharedData
    
    @State var nameTravel: String = ""
    @State var dates1 = Date()
    @State var dates2 = Date()
    //  @State var imagename: String
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Your destination")) {
                    TextField("your destination is..", text: $nameTravel)
                }
                DatePicker(selection: $dates1, in: ...Date(), displayedComponents: .date) {
                    Text("Select arrival ")
                }
                
                DatePicker(selection: $dates2, in: ...Date(), displayedComponents: .date) {
                    Text("Select departure ")
                }
                
                //                                            Text("Date is (todaysDate.formatted(date: .long, time: .omitted))")
                
                
            }
            // to do upload photo
            //      Section(header: Text("")) {
            //     TextField("pic photo", text: $imagename)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // print(myData.travels.count)
                        addTravel(nameTravel: nameTravel, dates: dates1)
                        // print(myData.travels.count)
                    } label: {
                        Text("Add")
                    }
                    
                }
                
            }
            .navigationTitle("New Travel")
        }
        
        
        
        
    }
    
    private func addTravel(nameTravel: String, dates: Date) {
        let newTravel = Travel(travelName: nameTravel, datesArr: dates1, datesDep: dates2, imageName: "")
        myData.travels.append(newTravel)
//
//        struct AddTravel_Previews: PreviewProvider {
//            static var previews: some View {
//                AddTravel()
//            }
//
//
//        }
        
    }
}


struct AddTravel_Previews: PreviewProvider {
    static var previews: some View {
        AddTravel()
    }
}
