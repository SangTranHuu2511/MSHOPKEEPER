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
    
    @IBOutlet weak var currentPassTF: UITextField!
    @IBOutlet weak var newPassTF: UITextField!
    @IBOutlet weak var confirmTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGestureRecognizer)
        btnChangePass.layer.masksToBounds = true
        btnChangePass.layer.cornerRadius = 5
        newPassTF.delegate = self
        confirmTF.delegate = self
        currentPassTF.delegate = self
        
    }
    
    
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func changPass(_sender: UIButton) {
        labelConfirmPass.isHidden = false
        borderConfirmPass.backgroundColor = .red
        labelConfirmPass.textColor = .red
    }

}
extension ChangePassVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if let _ = textField.viewWithTag(0) as? UITextField {

        
        }
        if let _ = textField.viewWithTag(1) as? UITextField {
            labelCurrentPass.isHidden = false
            labelCurrentPass.textColor = .red
            borderCurrentPass.backgroundColor = .red
            
            
        }
        if let _ = textField.viewWithTag(2) as? UITextField {
            labelNewPass.isHidden = false
            labelNewPass.textColor = .red
            borderNewPass.backgroundColor = .red
            

            
            
        }

        
        
    }
    


}
