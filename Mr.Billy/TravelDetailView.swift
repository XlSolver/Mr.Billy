//
//  TravelDetail.swift
//  Mr.Billy
//
//  Created by Ciro Canetti on 28/10/22.
// credo sia da rifare completamente graficamente, ma almeno ho creato la view

import SwiftUI

struct TravelDetail: View {
    
    var travel: Travel
    
    var body: some View {
        
            //        ZStack{
        VStack {
            
            Image(systemName: "airplane.arrival")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 380, height: 380)
                .clipShape(Rectangle())
                .shadow(radius: 6)
                .padding()
            Text(travel.travelName)
                .font(.title)
                .bold()
                .foregroundColor(.black)
                .opacity(0.8)
            
           
            
        }
        }
        
    }
    
    
    struct TravelDetail_Previews: PreviewProvider {
        static var previews: some View {
            TravelDetail(travel:
                            sharedData.travels[0])
        }
    }
    
    
