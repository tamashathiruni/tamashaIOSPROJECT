//
//  Product.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-19.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Floral Dress", image: "girl1", price: 20),
                   Product(name: "Floral Dress", image: "girl2", price: 20)]
