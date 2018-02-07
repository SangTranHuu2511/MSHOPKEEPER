//
//  Product.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 2/7/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit
struct Product {
    var name: String
    var price: Int
    var image: UIImage
    
    init(name: String, price: Int, image: UIImage) {
        self.name =  name
        self.price = price
        self.image = image
    }
    
}
