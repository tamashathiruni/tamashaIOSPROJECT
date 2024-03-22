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

var productList = [Product(name: "Floral Dress", image: "girl1", price: 2300),
                   Product(name: "Floral Dress", image: "girl2", price: 7000),
                   Product(name: "Floral Dress", image: "girl3", price: 2000),
                   Product(name: "Floral Dress", image: "girl4", price: 2700),
                   Product(name: "Floral Dress", image: "girl5", price: 2000),
                   Product(name: "Floral Dress", image: "girl6", price: 4000),
                   Product(name: "Floral Dress", image: "girl7", price: 5000),
                   Product(name: "Floral Dress", image: "girl8", price: 1900),
                   Product(name: "Floral Dress", image: "girl1", price: 2100),
                   Product(name: "Floral Dress", image: "girl1", price: 1200)]
