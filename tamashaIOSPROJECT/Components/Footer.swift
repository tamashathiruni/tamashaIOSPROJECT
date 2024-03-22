//
//  Footer.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        VStack(spacing: 0.0) {
            Divider()
                .padding(.bottom, 10)
            
            HStack {
                Spacer()
                Image(systemName: "house.fill")
                Spacer()
                Image(systemName: "magnifyingglass")
                Spacer()
                Image(systemName: "bell")
                Spacer()
                Image(systemName: "person.circle")
                Spacer()
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 3)
        }
        .background(Color("logoColor"))
    }
}

#Preview {
    Footer()
}
