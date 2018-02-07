//
//  ViewController.swift
//  MSHOPKEEPER
//
//  Created by Admin on 1/6/18.
//  Copyright © 2018 MISA. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var personView: UIView!
    @IBOutlet weak var passView: UIView!
    @IBOutlet weak var parentView: UIView!
    
    @IBOutlet weak var homeTextFeild: UITextField!
    @IBOutlet weak var passTextFeild: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var btnLogIn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTextFeild.delegate = self
        userTextField.delegate = self
        passTextFeild.delegate = self
        borderView()
        passTextFeild.isSecureTextEntry = true
        loadConfigTextFeild()
        hideKeyboard()
        btnLogIn.layer.masksToBounds = true
        btnLogIn.layer.cornerRadius = 5
        
        
        
        
    }
    func borderView() {
        parentView.layer.masksToBounds = true
        parentView.layer.cornerRadius = 5
        //btnDangNhap.layer.masksToBounds = true
        //btnDangNhap.layer.cornerRadius = 5
    }
    
    
    func configTextFieldState(nameTextFeild: UITextField) {
        nameTextFeild.clearButtonMode = .whileEditing
        
    }
    func loadConfigTextFeild() {
        configTextFieldState(nameTextFeild: homeTextFeild)
        configTextFieldState(nameTextFeild: passTextFeild)
        configTextFieldState(nameTextFeild: userTextField)
    }
    
    
    //MARK: action
    @IBAction func onClickLogIn(_ sender: Any) {
        let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeVC")
        let menuVC = storyboard?.instantiateViewController(withIdentifier: "SlideMenuVC")
        let slideMenu = SlideMenuController(mainViewController: homeVC!, leftMenuViewController: menuVC!)
        self.show(slideMenu, sender: nil)
    }
}



extension LoginVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if  textField == homeTextFeild {
            userTextField.becomeFirstResponder()
            
        }
        if textField == userTextField {
            passTextFeild.becomeFirstResponder()
        }
        if textField == passTextFeild {
            textField.resignFirstResponder()
        }
        return false
        
    }
    
    func hideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(LoginVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}

