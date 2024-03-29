//
//  Item.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-29.


import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    let images: [Image]
    var name: String
    var price: Int
    var des: String
}

var itemList = [
    Item(images: [Image("girl1"), Image("girl2")], name: "Floral Dress", price: 2300, des: "hello")
]

