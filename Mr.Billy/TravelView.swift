//
//  TravelView.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 25/10/22.
//  Edit by Ciro MarioRui Canetti
//modifiche e problemi: aggiunto modale x new travel, il viaggio si aggiunge correttamente. il singolo viaggio puo anche essere visto nel dettaglio (aggiunta vista DetailTravel), ma ci sono problemi nel mostrare la data (credo perchè la viariabile Date non va bene x quella vista) e nel prendere foto per i nuovi viaggi. inoltre cè il problmea delle funzioni attivabilli con lo switch dx e sx, non credo sia possibile se non facendo una lisra vera e propria

import SwiftUI

struct TravelView: View {
    @ObservedObject var myData = sharedData
    @State var newAddTravelViewisPresented = false
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(myData.travels) {travels in
                        NavigationLink(destination: TravelDetail(travel: travels))
                        {
                            
                            
//                            Button {
//                                         print("MAMMT")
////             action code NavigationLink
//                                // what do i need to do with data to create a navigation link?
//                            }
//
//                            label:
//                            {
                            
                            
                                ZStack (alignment: .center) {
                                    Image(travels.imageName)
                                        .resizable()
                                        .opacity(0.8)
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.clear, .black.opacity(0.2)], startPoint: .top, endPoint: .bottom)
                                        )
                                    Text(travels.travelName)
                                        .font(.title)
                                        .bold()
                                        .shadow(radius: 4)
                                        .opacity(0.9)
                                }
                                .frame(width: 360, height: 120)
                                .cornerRadius(11)
                                .foregroundColor(.white)
                                .shadow(radius: 3)
                                .padding(10)
                            }
                            }
                        }
                    }
                    
                
                    .navigationTitle("Travels")
                    .sheet(isPresented: $newAddTravelViewisPresented) {
                        AddTravel()
                    }
                    .toolbar {
                        ToolbarItem {
                            Button {
                                newAddTravelViewisPresented.toggle()
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                    }
                }
            }
        }
        struct TravelView_Previews: PreviewProvider {
            static var previews: some View {
                TravelView()
            }
        }
        
    

