//
//  ChangePassVC.swift
//  MSSHOPKEEPER2
//
//  Created by Admin on 2/1/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit

class ChangePassVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnChangePass: UIButton!
    
    @IBOutlet weak var borderCurrentPass: UIView!
    @IBOutlet weak var borderNewPass: UIView!
    @IBOutlet weak var borderConfirmPass: UIView!
    
    @IBOutlet weak var labelCurrentPass: UILabel!
    @IBOutlet weak var labelNewPass: UILabel!
    @IBOutlet weak var labelConfirmPass: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGestureRecognizer)
        btnChangePass.layer.masksToBounds = true
        btnChangePass.layer.cornerRadius = 5
        
    }
    
    
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        dismiss(animated: true, completion: nil)
        
    }

}
