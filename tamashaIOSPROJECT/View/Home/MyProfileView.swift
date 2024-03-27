//
//  MyProfileView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        //Header()
                        Spacer()
                        
                        NavigationLink(destination: PersonalDetailsView()) {
                            ProfileOptionRow(title: "Edit Personal Details", icon: "person.fill")
                        }
                        
                        NavigationLink(destination: Cart()) {
                            ProfileOptionRow(title: "View Cart", icon: "cart.fill")
                        }
                        
                        NavigationLink(destination: WishlistView()) {
                            ProfileOptionRow(title: "View Wishlist", icon: "heart.fill")
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
struct PersonalDetailsView: View {
    var body: some View {
        Text("Personal Details View")
    }
}

struct Cart: View {
    var body: some View {
        CartView()
    }
}

struct WishlistView: View {
    var body: some View {
        Text("Wishlist View")
    }
}
