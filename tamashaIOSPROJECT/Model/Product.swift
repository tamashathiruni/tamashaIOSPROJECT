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

var productList = [Product(name: "Silk Blouse", image: "girl3", price: 2300),
                   Product(name: "Blue Dress", image: "girl5", price: 7000),
                   Product(name: "Floral Blouse", image: "girl1", price: 2000),
                   Product(name: "Long Dress", image: "girl4", price: 2700),
                   Product(name: "Floral Dress", image: "girl2", price: 2000),
                   Product(name: "Purple Short Dress", image: "girl6", price: 4000),
                   Product(name: "White top", image: "girl7", price: 5000),
                   Product(name: "Red Dress", image: "girl8", price: 1900),
                   Product(name: "Floral Dress", image: "girl1", price: 2100),
                   Product(name: "Floral Dress", image: "girl4", price: 1200)]

var productlistmen = [Product(name: "Floral Dress", image: "man1", price: 2300),
                      Product(name: "Floral Dress", image: "man2", price: 7000),
                      Product(name: "Floral Dress", image: "man3", price: 2000),
                      Product(name: "Floral Dress", image: "man4", price: 2700),
                      Product(name: "Floral Dress", image: "man5", price: 2000),
                      Product(name: "Floral Dress", image: "man6", price: 4000),
                      Product(name: "Floral Dress", image: "man7", price: 5000),
                      Product(name: "Floral Dress", image: "man8", price: 1900),
                      Product(name: "Floral Dress", image: "man3", price: 2100),
                      Product(name: "Floral Dress", image: "man1", price: 1200)]

