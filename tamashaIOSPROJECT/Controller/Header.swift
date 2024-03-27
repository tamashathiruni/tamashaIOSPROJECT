//
//  Header.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import SwiftUI

struct Header: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "list.bullet")
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.horizontal, 100)
                NavigationLink(destination: CartView().environmentObject(cartManager)) {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 0)
        .background(Color("logoColor"))
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
