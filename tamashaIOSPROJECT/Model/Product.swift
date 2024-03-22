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
                   Product(name: "Floral Dress", image: "girl2", price: 20),
                   Product(name: "Floral Dress", image: "girl3", price: 20),
                   Product(name: "Floral Dress", image: "girl4", price: 20),
                   Product(name: "Floral Dress", image: "girl5", price: 20),
                   Product(name: "Floral Dress", image: "girl6", price: 20),
                   Product(name: "Floral Dress", image: "girl7", price: 20),
                   Product(name: "Floral Dress", image: "girl8", price: 20),
                   Product(name: "Floral Dress", image: "girl1", price: 20),
                   Product(name: "Floral Dress", image: "girl1", price: 20)]
