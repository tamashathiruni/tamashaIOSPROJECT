//
//  LineTextField.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import SwiftUI

struct LineTextField: View {
    @Binding var txt: String
    @State var title: String =  "Text"
    @State var placeholder: String = "Placeholder"
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack {
            
            TextField(placeholder, text: $txt)
                .keyboardType(keyboardType)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.bottom, 20)
        }
    }
}

struct LineTextField_Preview: PreviewProvider {
    @State static var txt: String = ""
    static var previews: some View {
        LineTextField(txt: $txt)
    }
}
