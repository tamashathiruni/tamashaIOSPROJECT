//
//  Welcome2Page.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-18.
//

import SwiftUI

struct Welcome2Page: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("logoColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .padding(.top, 10)
                        .padding(.bottom, 300)
                    
                    //GeometryReader { geometry in
                        Image("welcome2Img")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 300)
                            .padding(.top, -100)
                            //.frame(width: geometry.size.width, height: geometry.size.height)
                            .overlay(
                                Rectangle()
                                    .foregroundColor(Color.white.opacity(0.4))
                                    .frame(width: 600, height: 700)
                                    //.frame(width: geometry.size.width, height: geometry.size.height)
                            )
                            .padding(.top, -100)
                    //}
                    
                    VStack(spacing: 20) {
                        HStack {
                            Spacer()
                            Button(action: {
                                // Navigate to ShopMenView
                            }) {
                                NavigationLink(destination: ShopMenView()) {
                                    Text("Shop  Men's")
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(Color.black)
                                        .cornerRadius(10)
                                        .padding(.horizontal, 2)
                                        .frame(width: 200)
                                }
                            }

                            Spacer()
                            
                            Button(action: {
                                // Navigate to ShopMenView
                            }) {
                                NavigationLink(destination: ShopWomenView()) {
                                    Text("Shop Women's")
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(Color.black)
                                        .cornerRadius(10)
                                        .padding(.horizontal, 2)
                                        .frame(width: 200)
                                }
                            }
                            Spacer()
                        }
                        
                        NavigationLink(destination: LoginView()) { // Navigate to LoginView
                            Text("Sign In/Register")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal, 20) 
                    .padding(.bottom, 100)
                    
                    Spacer()
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct Welcome2Page_Previews: PreviewProvider {
    static var previews: some View {
        Welcome2Page()
    }
}
