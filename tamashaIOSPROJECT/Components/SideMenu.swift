//
//  SideMenu.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct SideMenu: View {
  
  var body: some View {
    VStack {
        Image("logo")
            .padding(.top, -70)
      Divider()
        .frame(width: 250, height: 1)
        .background(Color("logoTextColor"))
        .padding(.horizontal, 16)
        .padding(.top, -35)
      
        HStack {
            SearchBar()
                .padding(.horizontal)
                .frame(width: 300)
                .padding(.top, -30)
        }

        NavigationLink(destination: MyProfileView()) {
            Text("My Profile")
        }
      .font(.title3)
      .foregroundColor(.black)
      .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
      
      Spacer()
    }
    .padding(32)
    .background(Color("logoColor"))
    .edgesIgnoringSafeArea(.bottom)
  }
  
}

struct SideMenu_Previews: PreviewProvider {
  static var previews: some View {
    SideMenu()
  }
}
