//
//  ProductCardMens.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-22.
//

import SwiftUI

struct ProductCardMens: View {
    @EnvironmentObject var cartManager: CartManager
    var product: ProductMens
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.imagem)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.namem)
                        .bold()
                    
                    Text("LKR \(product.pricem)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                //cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCardMens_Preview: PreviewProvider {
    static var previews: some View {
        ProductCardMens(product: productlistmen[0])
            .environmentObject(CartManager())
    }
}
