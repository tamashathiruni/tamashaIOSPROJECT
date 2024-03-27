//
//  FilterView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        VStack {
            //Header()
            Spacer()
            VStack {
                HStack {
                        NavigationLink(destination: ShopWomenView()) {
                                            Image("girl3") // Replace "shop_women_icon" with the name of your image asset
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 200, height: 200) // Adjust size as needed
                                                .padding(.horizontal, 1)
                                        }
                        NavigationLink(destination: ShopMenView()) {
                                            Image("man3") // Replace "shop_women_icon" with the name of your image asset
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 200, height: 200) // Adjust size as needed\
                                                .padding(.horizontal, -20)
                                        }
                        
                    }
                .padding()
            }
            Spacer()
            //CustomTabBarView()
        }
    }
}

#Preview {
    FilterView()
}
