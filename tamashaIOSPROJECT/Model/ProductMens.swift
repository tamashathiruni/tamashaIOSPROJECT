//
//  ProductMens.swift
//  tamashaIOSPROJECT
//
//  Created by NIBM-LAB04-PC05 on 2024-03-22.
//

import Foundation

struct ProductMens: Identifiable {
    var id = UUID()
    var namem: String
    var imagem: String
    var pricem: Int
}

var productlistmen = [ProductMens(namem: "Plain Shirt", imagem: "man1", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man2", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man3", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man4", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man5", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man6", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man7", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man8", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man9", pricem: 2800),
                      ProductMens(namem: "Plain Shirt", imagem: "man10", pricem: 2800)]
