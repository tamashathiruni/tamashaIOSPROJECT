//
//  LoginView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginVM = MainViewModel.shared;
    
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
                        .frame(width: geometry.size.width * 1, height: 300) // Adjust size as needed
                        .padding(.top, -110) // Adjust top padding
                        .padding(.horizontal, -14)
                    
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                        .padding(.top, -10)
                    
                    Divider()
                        .padding(.bottom, 20)
                    
                    LineTextField(txt: $loginVM.txtEmail, title: "Email", placeholder:"Email", keyboardType: .emailAddress)
                    
                    LineTextField(txt: $loginVM.txtPassword, title: "Password", placeholder:"Password")
                    
                    SecureField("Password", text: $loginVM.txtPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                    
                    Button(action: {
                        // Perform login action
                    }) {
                        Text("Login")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    Text("New Customer?")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    
                    Divider()
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    
                    NavigationLink(destination: RegisterView()) { // Navigate to RegisterView
                        Text("Create an Account")
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
