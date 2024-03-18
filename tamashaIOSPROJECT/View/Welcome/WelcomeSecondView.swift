//
//  Welcome2Page.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-18.
//

import SwiftUI

struct Welcome2Page: View {
    var body: some View {
        ZStack {
            Color("logoColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Spacer().frame(height: 50) // Add space at the top
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.top, -100)
                
                Image("welcome2Img")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 500)
                    .padding(.top, -100) // Adjust the top padding to bring it closer to the logo image
                    .overlay(
                        Rectangle()
                            .foregroundColor(Color.white.opacity(0.4))
                    )
                
                VStack(spacing: 20) {
                    HStack {
                        Spacer()
                        Button(action: {
                            // Action for "Shop men's" button
                        }) {
                            Text("Shop men's")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        Spacer()
                        
                        Button(action: {
                            // Action for "Shop women's" button
                        }) {
                            Text("Shop women's")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    
                    Button(action: {
                        // Action for "Sign In/Register" button
                    }) {
                        Text("Sign In/Register")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()
            }
            .padding(.horizontal, 20) // Add horizontal padding to the VStack
        }
    }
}

struct Welcome2Page_Previews: PreviewProvider {
    static var previews: some View {
        Welcome2Page()
    }
}
