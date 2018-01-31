//
//  Data.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 1/31/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit
class Data {
    static func loadData() -> [Model] {
        return [
            Model(name: "Giới thiệu cho bạn bè", image: UIImage(named: "ic_menu_share")!),
            Model(name: "Đánh giá ứng dụng", image: UIImage(named: "ic_menu_rate")!),
            Model(name: "Thông tin sản phẩm", image: UIImage(named: "ic_menu_about")!),
            Model(name: "Thay đổi mật khẩu", image: UIImage(named: "ic_password_30dp")!),
            Model(name: "Đăng xuất", image: UIImage(named: "ic_menu_logout")!),  
        ]
    }
}

