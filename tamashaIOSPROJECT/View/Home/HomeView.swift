//
//  HomeView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    Header()
                    Spacer()
                    HStack{
                        Button(action: {
                            // Perform RegisterView action
                        }) {
                            NavigationLink(destination: ShopWomenView()) {
                                Text("Log in")
                                    .foregroundColor(.blue)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .padding(.horizontal)
                            }
                        }
                    }
                    Spacer()
                }
            }
            Spacer()
            Footer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
