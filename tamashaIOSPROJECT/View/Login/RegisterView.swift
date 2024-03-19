//
//  RegisterView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var phoneNumber = ""
    @State private var password = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("logoColor")
                    .opacity(0.4) // Set the opacity to 40%
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logoLandscape")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 1, height: 300) // Set the width to 80% of the screen width
                        .padding(.bottom, -10)
                        .padding(.top, -300)
                        .padding(.horizontal, -20)
                    
                    Text("Create an Account")
                        .font(.custom("HelveticaNeue", size: 18))
                        .fontWeight(.bold)
                        .padding(.top, -10)
                    
                    Divider()
                        .padding(.top, 10)
                        .padding(.bottom, 12)
                    
                    VStack(spacing: 20) {
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        TextField("Phone Number", text: $phoneNumber)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                            .keyboardType(.numberPad)
                        
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        Button(action: {
                            // Perform registration action
                        }) {
                            Text("Register")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    RegisterView()
}
