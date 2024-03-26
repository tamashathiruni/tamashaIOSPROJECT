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
                    VStack{
                        
                    }
                    Spacer()
                }
            }
            Spacer()
            //Footer()
            CustomTabBarView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
