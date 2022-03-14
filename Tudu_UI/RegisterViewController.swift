//
//  RegisterViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 01/03/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var lblUsername: TextField!
    
    @IBOutlet weak var lblEmail: TextField!
    
    @IBOutlet weak var btnRegister: buttonXib!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Register"
        lblUsername.data(placeholder: "Username")
        lblEmail.data(placeholder: "Email")
        
        btnRegister.btn(title: "Register")
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }

}
