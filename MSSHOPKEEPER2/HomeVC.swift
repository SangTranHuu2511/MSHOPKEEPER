//
//  HomeVC.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 1/30/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var btnMenu: UIButton!
    let products = Data.loadProducts()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func turnOnSlideMenu(_ sender: Any) {
        openLeft()
    }

}
