//
//  ShopMenView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import SwiftUI

struct ShopMenView: View {
    
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(productList, id: \.id) { product in
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                    .padding()
            }
            .background(Color("logoColor"))
            .navigationTitle("MENS WEAR")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts:
                                cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        Footer()
    }
}

#Preview {
    ShopMenView()
}
