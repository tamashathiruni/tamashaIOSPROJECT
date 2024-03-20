//
//  ShopWomenView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC07 on 2024-03-20.
//

import SwiftUI

struct ShopWomenView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        ScrollView {
            VStack {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ShopWomenView()
}
