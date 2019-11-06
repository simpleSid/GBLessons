//
//  LoginViewController.swift
//  GB
//
//  Created by Денис Сидоренко on 03/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        loginTextField.delegate = self
//        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let login = loginTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        
        if login == "1" && password == "1" {
            return true
        } else {
            showAlert(title: nil, message: "неправильный логин или пароль", cancelTitle: "ок")
            return false
        }
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
       
    }
    
}




