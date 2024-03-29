//
//  SideMenuView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.
//

import SwiftUI

struct SideMenuView: View {
  
  // MARK: - Properties
  
  @State private var showMenu: Bool = false
  
  // MARK: - View Body
  
  var body: some View {
    NavigationView {
      
      ZStack {
        
        Color.mint.ignoresSafeArea(.all, edges: .all)
        
        VStack {
          Text("ContentView")
            .padding()
            .font(.title)
            .foregroundColor(.white)
        }
        
        GeometryReader { _ in
          
          HStack {
            Spacer()
            
              SideMenu()
              .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
              .animation(.easeInOut(duration: 0.4), value: showMenu)
          }
          
        }
        .background(Color.black.opacity(showMenu ? 0.5 : 0))
        
      }
      
      .navigationTitle("Side Menu Demo")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        
        Button {
          self.showMenu.toggle()
        } label: {
          
          if showMenu {
            
            Image(systemName: "xmark")
              .font(.title)
              .foregroundColor(.red)
            
          } else {
            Image(systemName: "text.justify")
              .font(.title)
              .foregroundColor(.red)
          }
          
        }
      }
    }
  }
}

struct SideMenuView_Previews: PreviewProvider {
  static var previews: some View {
      SideMenuView()
  }
}
