//
//  Data.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 1/31/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit
class Data {
    static func loadDataItemSlide() -> [ItemSlide] {
        return [
            ItemSlide(name: "Giới thiệu cho bạn bè", image: UIImage(named: "ic_menu_share")!),
            ItemSlide(name: "Đánh giá ứng dụng", image: UIImage(named: "ic_menu_rate")!),
            ItemSlide(name: "Thông tin sản phẩm", image: UIImage(named: "ic_menu_about")!),
            ItemSlide(name: "Thay đổi mật khẩu", image: UIImage(named: "ic_password_30dp")!),
            ItemSlide(name: "Đăng xuất", image: UIImage(named: "ic_menu_logout")!),  
        ]
    }
    
    static func loadProducts() -> [Product] {
        return [
            
            
        ]
    }
}

