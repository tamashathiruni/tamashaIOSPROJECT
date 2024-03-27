//
//  SearchView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(.horizontal)
                .padding(.vertical, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button(action: {
                // Perform search action
                print("Search button tapped")
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.horizontal)
            }
        }
        .padding()
        .padding(.horizontal)
        .padding(.top, -10)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
