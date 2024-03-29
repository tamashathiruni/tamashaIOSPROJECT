//
//  RegisterView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//RegisterView

import SwiftUI

enum FocusField {
    case email
    case password
    case phoneNumber
}
struct RegisterView: View {
    
    @State private var emailText = ""
    @State private var passwordText = ""
    @State private var phoneNumber = ""
    @State private var isValidEmail = true
    @State private var isValidPassword = true
    @State private var isValidphoneNumber = true
    
    var canProceed: Bool {
        Validator.validateEmail(emailText) &&
                                Validator.validatePassword(passwordText)
    }
    
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        VStack {
            //LoginHeader()
            NavigationStack {
                VStack {
                    Text("Create Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
                    
                    Divider()
                        .padding(.bottom, 20)
                    
                    EmailTextField(emailText: $emailText, isValidEmail: $isValidEmail)
                    
                    PasswordTextField(passwordText: $passwordText, isValidPassword: $isValidPassword)
                    
                    phoneNumberTextField(phoneNumberText: $phoneNumber, isValidphoneNumber: $isValidphoneNumber)
                    
                    Button(action: {
                        // Perform RegisterView action
                    }) {
                        NavigationLink(destination: LoginView()) {
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
                    }
                    //.padding(.trailing)
                    
                    Button(action: {
                        // Perform RegisterView action
                    }) {
                        NavigationLink(destination: LoginView()) {
                            Text("Log in")
                                .foregroundColor(.blue)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .padding(.horizontal)
                                .padding(.bottom, -100)
                        }
                    }
                    .padding(.bottom)
                }
                
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

struct EmailTextField: View {
    
    @Binding var emailText: String
    @Binding var isValidEmail: Bool
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        VStack {
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
        }
    }
}

struct PasswordTextField: View {
    
    @Binding var passwordText: String
    @Binding var isValidPassword: Bool
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        VStack {
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
        }
    }
}

struct phoneNumberTextField: View {
    
    @Binding var phoneNumberText: String
    @Binding var isValidphoneNumber: Bool
    @FocusState private var focusField: FocusField?
    
    var body: some View {
        VStack {
            TextField("Contact no", text: $phoneNumberText)
                .focused($focusField, equals: .password)
                .padding()
                .background(Color("secondaryLogoColor")) // Set your desired background color here
                .cornerRadius(12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(isValidphoneNumber ? (focusField == .password ? Color("logoColor") : Color.white) : Color.red, lineWidth: 3)
                )
                .padding(.bottom, 20) // Move padding here if needed
                .onChange(of: phoneNumberText) { newValue in
                    isValidphoneNumber = Validator.validatePhoneNumber(newValue)
                }
            if !isValidphoneNumber {
                HStack {
                    Text("Your phoneNumber is not valid")
                        .foregroundColor(.red)
                        .padding(.leading)
                    Spacer()
                }
            }
        }
    }
}
