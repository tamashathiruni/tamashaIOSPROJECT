//
//  ProductArrayMainView.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC02 on 2024-03-28.
//

import Foundation

struct ProductArrayMainView: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productsPopular = [Product(name: "Floral Dress", image: "girl3", price: 2000),
                   Product(name: "Collar T-Shirt", image: "man4", price: 2700),
                   Product(name: "Floral Dress", image: "girl5", price: 2000),
                   Product(name: "White T-Shirt", image: "man6", price: 3000)]

var productsBestSell = [Product(name: "Floral Dress", image: "man3", price: 2000),
                   Product(name: "Collar T-Shirt", image: "girl5", price: 2700),
                   Product(name: "Floral Dress", image: "man1", price: 2000),
                   Product(name: "White T-Shirt", image: "man6", price: 3000)]

