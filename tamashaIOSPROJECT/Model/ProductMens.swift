//
//  ProductMens.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-22.
//

import Foundation

struct ProductMens: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productlistmen = [ProductMens(name: "Plain Shirt", image: "man1", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man2", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man3", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man4", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man5", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man6", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man7", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man8", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man9", price: 2800),
                      ProductMens(name: "Plain Shirt", image: "man10", price: 2800)]
