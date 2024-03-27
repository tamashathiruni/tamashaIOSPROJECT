//
//  WelcomeView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-18.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("logoColor")
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                VStack {
                    Spacer()
                    NavigationLink(destination: Welcome2Page()) {
                        Text("Getting Started")
                            .padding()
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    .padding()
                    .cornerRadius(10)
                }
            }
            .ignoresSafeArea()
            .accentColor(Color.black)
            .navigationBarHidden(true) // Hide the navigation bar
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    WelcomeView()
}
