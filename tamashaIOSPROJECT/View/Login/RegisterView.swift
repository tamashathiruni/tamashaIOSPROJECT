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
    @State private var contactNoText = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    @State private var isValidPhoneNumber = true
    
    var canProceed: Bool {
        Validator.validateEmail(emailText) &&
            Validator.validatePassword(passwordText) &&
            Validator.validatePhoneNumber(contactNoText)
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
                    
                    NavigationView {
                        VStack {
                            Text("Create Account")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.bottom, 20)
                                .padding(.top, -10)
                            
                            
                            Divider()
                                .padding(.bottom, 20)
                            
                            TextField("Email", text: $emailText)
                                .focused($focusField, equals: .email)
                                .padding()
                                .background(Color("secondaryLogoColor")) // Set your desired background color here
                                .cornerRadius(12)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(isValidEmail ? (focusField == .email ? Color("logoColor") : Color.white) : Color.red, lineWidth: 3)
                                )
                                .padding(.bottom, 20) // Move padding here if needed
                                .onChange(of: emailText) { newValue in
                                    isValidEmail = Validator.validateEmail(newValue)
                                }
                            
                            if !isValidEmail {
                                HStack {
                                    Text("Your email is not valid")
                                        .foregroundColor(.red)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                            
                            TextField("Contact Number", text: $contactNoText)
                                .focused($focusField, equals: .phoneNumber)
                                .padding()
                                .background(Color("secondaryLogoColor")) // Set your desired background color here
                                .cornerRadius(12)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(isValidPhoneNumber ? (focusField == .phoneNumber ? Color("logoColor") : Color.white) : Color.red, lineWidth: 3)
                                )
                                .padding(.bottom, 20) // Move padding here if needed
                                .onChange(of: contactNoText) { newValue in
                                    isValidPhoneNumber = Validator.validatePhoneNumber(newValue)
                                }
                            
                            if !isValidPhoneNumber {
                                HStack {
                                    Text("Your phone number is not valid")
                                        .foregroundColor(.red)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                            
                            TextField("Password", text: $passwordText)
                                .focused($focusField, equals: .password)
                                .padding()
                                .background(Color("secondaryLogoColor")) // Set your desired background color here
                                .cornerRadius(12)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(isValidPassword ? (focusField == .password ? Color("logoColor") : Color.white) : Color.red, lineWidth: 3)
                                )
                                .padding(.bottom, 20) // Move padding here if needed
                                .onChange(of: passwordText) { newValue in
                                    isValidPassword = Validator.validatePassword(newValue)
                                }
                            
                            if !isValidPassword {
                                HStack {
                                    Text("Your Password is not valid")
                                        .foregroundColor(.red)
                                        .padding(.leading)
                                    Spacer()
                                }
                            }
                            
                            Button(action: {
                                // Perform sign-up action
                            }) {
                                Text("Sign up")
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
                        .padding()
                    }
                    Spacer()
                    
                    Button(action: {
                        // Perform create new account action
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

