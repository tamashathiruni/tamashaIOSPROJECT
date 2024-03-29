//
//  FilterView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        NavigationView {
            VStack {
                SearchBar()
                    .padding(.bottom, -20)
                ScrollView {
                    VStack {
                        ZStack {
                            Image("filterViewWomen")
                                .resizable()
                                .frame(width: 300, height: 400)
                                .padding(.bottom, -3)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            
                            NavigationLink(destination: ShopWomenView()) {
                                Text("Shop Women")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                                    .padding(.top, 300)
                                    .padding(.bottom, -10)
                                    .padding(.trailing, 40)
                                    .foregroundColor(.white)
                            }
                        }
                        ZStack {
                            Image("filterViewMen")
                                .resizable()
                                .frame(width: 300, height: 400)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                            
                            NavigationLink(destination: ShopMenView()) {
                                Text("shop Men")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottomLeading)
                                    .padding(.leading, 40)
                                    .padding(.bottom, -10)
                                    .padding(.top, 200)
                                .foregroundColor(.white)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Home")
            .navigationBarHidden(true) // Hide the navigation bar for this view
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
