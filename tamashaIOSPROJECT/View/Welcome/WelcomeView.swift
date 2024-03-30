//
//  WelcomeView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-18.
//

import SwiftUI

struct WelcomeView: View {
    @State private var isActive: Bool = false
    var body: some View {
        //NavigationView {
            ZStack {
                Color("logoColor")
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                VStack {
                            Spacer()
                            Button(action: {
                                isActive = true // Set isActive to true to trigger navigation
                            }) {
                                Text("Getting Started")
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(Color("logoColor")) // Add background color for better visibility
                                    .cornerRadius(10)
                            }
                            .padding()
                            .cornerRadius(10)
                            .fullScreenCover(isPresented: $isActive) {
                                Welcome2Page() // Navigate to Welcome2Page when isActive is true
                            }
                        }
            }
            .ignoresSafeArea()
            .accentColor(Color.black)
            .navigationBarHidden(true) // Hide the navigation bar
        //}
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    WelcomeView()
}
