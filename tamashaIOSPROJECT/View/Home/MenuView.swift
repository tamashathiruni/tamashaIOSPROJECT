//
//  MenuView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            VStack {
                GeometryReader { _ in
                    HStack {
                        Menu()
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
