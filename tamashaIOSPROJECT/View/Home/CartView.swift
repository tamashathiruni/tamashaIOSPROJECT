//
//  CartView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        VStack {
            Header()
            Text("My Cart")
                .bold()
                .font(.system(size: 20))
            
            ScrollView{
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) {
                        product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Your Cart Total is ")
                        Spacer()
                        Text("LKR \(cartManager.total).00")
                            .bold()
                    }
                    .padding()
                } else {
                    Text("Your cart is empty")
                }
            }
            Footer()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
