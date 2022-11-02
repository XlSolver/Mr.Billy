//
//  SpendingView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//

import SwiftUI

struct SpendingView: View {
    
    @Environment(\.presentationMode) var presentationMode
//    @State var image: Image? = nil
//    @State var showCaptureImageView: Bool = false
    
    @State var location = ""
    @State var value = ""
    @State private var date = Date()
    
    @ObservedObject var myData = spendingData
    
    @State private var categoryindex = 0
    var categorySelection = ["Food", "Ticket","Extra"]
    
    @State var changeImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Location").bold()) {
                    TextField("enter the location",text: $location)
                    
                }
                Section(header: Text("value").bold()){
                    TextField("Enter the amount", text: $value)
                        .keyboardType(.decimalPad)
                }
                DatePicker(selection: $date, in: ...Date(), displayedComponents: .date) {
                    Text("Select a date")
                }
//                Text("Date is \(date.formatted(date: .long, time: .omitted))")
                Section() {
                    Picker(selection: $categoryindex,label: Text("Category")) {
                        ForEach(0 ..< categorySelection.count, id: \.self) {
                            Text(self.categorySelection[$0])
                        }
                    }
                }
                //                                Section {
                //                                    Button (action: {
                //                                        print("added successfully")
                //                                        myData.add(new: Spending(location: location, value: Float(value)!, date: date, category: categorySelection[categoryindex]))
                //                                    })
                ZStack(alignment: .bottomTrailing) {
                    Button(action: {
                        changeImage = true
                        openCameraRoll = true
                        
                    }, label: {
                        if changeImage {
                            Image(uiImage: imageSelected)
                                .resizable()
                                .frame(width: 110, height: 100)
                                .padding(.leading,100)
                        }
                        else {
                            Image(systemName: "photo.fill")
                                .resizable()
                                .frame(width: 80, height: 70)
                                .foregroundColor(.gray)
                                .padding(.leading,110)
                        }
                    })
                    VStack {
                        Image(systemName: "plus")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .background(Color.gray)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                            .padding(.leading,110)
//                        Text("Add Photo")
//                            .padding(.leading,110)
//                            .padding(.bottom,30)
                    }
                }
                .sheet(isPresented: $openCameraRoll) {
                    ImagePicker(selectedImage: $imageSelected,
//                            sourceType: .photoLibrary) // from photo library
                        sourceType: .camera) // To take picture from camera
                }
            }
            .navigationTitle("Spending")
            .toolbar {
                ToolbarItem {
                    Button {
                        addnewspending(location:location,value:value,date:date,category:categorySelection[categoryindex])
                        presentationMode.wrappedValue.dismiss()
                    }
                label: {
                    Text("Add")
                }
                }
            }
        }
    }
    private func addnewspending(location:String,value:String,date:Date,category:String){
        let newspending = Spending(location:location,value:value,date: date,category:categorySelection[categoryindex])
        myData.newspendings.append(newspending)
    }
}



struct SpendingView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingView()
    }
}
