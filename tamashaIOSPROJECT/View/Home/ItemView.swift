//
//  ItemView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct ItemView: View {
    let item: Item
       
       init(item: Item) { // Ensure that the initializer takes an Item argument
           self.item = item
       }
    
    var body: some View {
        Text("Hello, World!")
        ForEach([item], id: \.id) { item in
            //ItemCard(item: item)
        }
    }
}

//struct ItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        //ItemView(item: itemList[0]) // Pass an Item object when initializing ItemView
//    }
//}
