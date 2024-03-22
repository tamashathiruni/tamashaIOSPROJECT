//
//  RegisterView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var phoneNumber = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    @State private var isValidphoneNumber = true RegisterView
    
    var canProceed: Bool {
        Validator.validateEmail(emailText) &&
            Validator.validatePassword(passwordText)
    }
    
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color("yourDesiredBackgroundColor") // Set your desired background color here
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("logoLandscape")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 1, height: 300) // Adjust size as needed
                        .padding(.top, -120) // Adjust top padding
                        .padding(.horizontal, -16)
                    
                    NavigationStack {
                        VStack {
                            Text("Crate Account")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                                .padding(.top, -10)
                        
                        
                        Divider()
                            .padding(.bottom, 20)
                            
                            EmailTextField(emailText: $emailText, isValidEmail: $isValidEmail)
                            
                            PasswordTextField(passwordText: $passwordText, isValidPassword: $isValidPassword)
                            
                            
                            HStack{
                                Spacer()
                                Button {
                                    //
                                } label: {
                                    Text("Forgot your Password?")
                                        .foregroundColor(Color.blue)
                                        .font(.system(size:14, weight: .semibold))
                                        .padding()
                                }
                            }
                        
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
                                .opacity(canProceed ? 1.0 : 0.5)
                                .disabled(!canProceed)
                        }
                        .padding(.trailing)
                        }
                        .edgesIgnoringSafeArea(.all)
                    }
                    Spacer()
                    
                    Button(action: {
                        // Perform login action
                    }) {
                        Text("Create new Account")
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .padding(.horizontal)
                    }
                    .padding(.bottom)
                    
                    Spacer()
                }
                .padding()
            }
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}



