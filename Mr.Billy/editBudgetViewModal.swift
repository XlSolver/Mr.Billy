//
//  editBudgetViewModal.swift
//  Mr.Billy
//
//  Created by Salvatore Flauto on 29/10/22.
//

import SwiftUI

struct editBudgetViewModal: View {
    var body: some View {
        Text("Sheet view")
    }
}
struct ContentsView: View {
    @State var showSheetView = false
    
    var body: some View {
        Button(action: {self.showSheetView.toggle()
            
        }){
          Text("Show sheet view")
        }.sheet(isPresented: $showSheetView)
        {
            editBudgetViewModal()
        }
    }
}

struct editBudgetViewModal_Previews: PreviewProvider {
    static var previews: some View {
        editBudgetViewModal()
    }
}
