//
//  LoginHeader.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import SwiftUI

struct LoginHeader: View {
    var body: some View {
        HStack {
            Image(systemName: "list.bullet")
            Image("logo")
                .resizable()
                .frame(width: 300, height: 210)                .padding(.horizontal, 200)
                .padding(.vertical)
            
        }
        .background(Color("logoColor"))
    }
}

#Preview {
    LoginHeader()
}
