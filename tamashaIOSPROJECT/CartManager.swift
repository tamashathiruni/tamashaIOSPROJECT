//
//  CartManager.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC03 on 2024-03-21.
//

import Foundation

// Manages the user's shopping cart
class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = [] // Published property to store the products in the cart
    
    @Published private(set) var total: Int = 0 // Published property to store the total price of the products in the cart
    
    // Method to add a product to the cart
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id}
        total -= product.price
    }
}
