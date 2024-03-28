//
//  MyProfileView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct MyProfileView: View {
    @State private var name = ""
    @State private var newNo = ""
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        //Header()
                        Text("Hi There")
                            .font(.system(size: 22))
                            .fontWeight(.medium)
                            .padding(.horizontal)
                            .fontWeight(.bold)
                            .padding(.bottom, 20)
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Edit Personal Details")
                                .font(.title3)
                            
                            TextField("Name", text: $name)
                                .padding()
                                .cornerRadius(8)
                            
                            Divider()
                                .padding(.top, -10)
                            
                            TextField("Contact Number", text: $newNo)
                                .padding()
                                .cornerRadius(8)
                            
                            Divider()
                                .padding(.top, -10)
                        }
                        Text("Save Changes")
                            .padding()
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color.gray.opacity(0.5))
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                            .multilineTextAlignment(.trailing)
                            .padding(.bottom, 30)
                        
                        Spacer()
                        
                        NavigationLink(destination: Cart()) {
                            ProfileOptionRow(title: "Your Orders", icon: "cart.fill")
                        }
                        
                        NavigationLink(destination: NotifyView()) {
                            ProfileOptionRow(title: "Notifications", icon: "bell.fill")
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Profile")
            .navigationBarHidden(true) // Hide the navigation bar for this view
        }
    }
}

struct MyProfileViewProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}

struct ProfileOptionRow: View {
    let title: String
    let icon: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(.blue)
                Text(title)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 3)
            .padding(.vertical, 5)
        }
    }
}

// navigation destinations
struct Cart: View {
    var body: some View {
        CartView()
    }
}

struct NotifyView: View {
    var body: some View {
        NotificationView()
    }
}
