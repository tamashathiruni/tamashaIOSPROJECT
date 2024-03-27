//
//  MainView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC04 on 2024-03-27.
//

import SwiftUI

struct MainView: View {
    @State private var selectedIndex: Int = 0
    private let categories = ["All", "Mens", "Womens", "Shirts", "Blouse", "Trousers"]
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack(alignment: .leading) {
                VStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("For Your  ")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Everyday Look ")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("with ")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        + Text("Moana")
                            .foregroundColor(Color("logoTextColor"))
                            .font(.title)
                            .fontWeight(.bold)
                    }

                    
                    ScrollView (.horizontal, showsIndicators: false) { // Change fales to false
                        HStack {
                            ForEach(0 ..< categories.count) { i in
                                CategoryView(isActive: i == selectedIndex, text: categories[i])
                                    .onTapGesture {
                                        selectedIndex = i // Use = instead of ==
                                    }
                            }
                        }
                        .padding()
                    }
                    
                    Text("Popular")
                        .font(.system(size: 22))
                        .fontWeight(.medium)
                        .padding(.horizontal)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    VStack {
                        Image("girl6")
                            .resizable()
                            .frame(width: 210, height: 200)
                            .cornerRadius(20.0)
                        
                        Text("Floral Dress")
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Text("LKR 2500")
                            .fontWeight(.bold)
                    }
                }
                .frame(width: 210)
                .padding()
                .background(Color.white)
                .cornerRadius(20.0)            }
            .padding(.top, -200)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(Color("logoTextColor"))
            
            if isActive {
                Color("logoTextColor")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}
