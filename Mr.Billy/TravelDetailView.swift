//
//  TravelDetail.swift
//  Mr.Billy
//
//  Created by Ciro Canetti on 28/10/22.
// credo sia da rifare completamente graficamente, ma almeno ho creato la view

import SwiftUI

struct TravelDetail: View {
    @StateObject var myData = expensesStore()
    var travel: Travel
    
    var body: some View {
        
        
        
        VStack (alignment: .leading)
        {
            List {
            Image(travel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 250)
                .clipShape(Rectangle())
                .shadow(radius: 6)
                .padding(2)
            
                Text(travel.travelName)
                    .font(.system(size: 75, weight: .bold, design: .default))
                    .bold()
                    .foregroundColor(.black)
                    .opacity(0.8)
                    .padding()
                
                
                HStack {
                    
                    
                    
                    
                    
                    Text("check-in:")
                        .font(.system(size: 20, design: .default))
                        .padding(5)
                    Text("\(travel.datesArr, style: .date)")
                        .font(.system(size: 30 , weight: .light, design: .default))
                        .padding(5)
                }
                
                HStack{
                    
                    Text("check-out:")
                        .font(.system(size: 20, design: .default))
                        .padding(5)
                    Text("\(travel.datesDep, style: .date)")
                        .font(.system(size: 30, weight: .light, design: .default))
                        .padding(5)
                    
                }
                
                HStack{
                    Text("your address:")
                        .font(.system(size: 20, design: .default))
                        .padding(5)
                    Text(travel.address)
                        .font(.system(size: 30, weight: .light, design: .default))
                        .padding(5)
                }
                HStack{
                    Text("your budget:")
                        .font(.system(size: 20, design: .default))
                        .padding(5)
                    Text(travel.budget)
                        .font(.system(size: 30, weight: .light, design: .default))
                        .padding(5)
                }
                
                Text("Transaction History")
                    .font(.system(size:35))
                ForEach(myData.expenses) {row in
                    VStack{
                        HStack(spacing: 10){
                            Text("\(row.place)")
                            Spacer()
                            Text("-"+"\(row.howMuch)"+"€")
                        }.padding()
//                    Divider()
                    }
                }
            }
        }
        
    }
    
    
    struct TravelDetail_Previews: PreviewProvider {
        static var previews: some View {
            TravelDetail(travel:
                            sharedData.travels[0]).environment(\.locale, Locale(identifier: "us"))
        }
    }
    
}
