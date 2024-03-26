//
//  MenuView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
            SearchBar()
                .padding(.top)
            Spacer()
        }
        .padding()
        .frame(width: 300)
        .background(Color("logoColor"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    Menu()
}
