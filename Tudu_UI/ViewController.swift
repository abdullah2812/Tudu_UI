//
//  ViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 19/02/22.
//

import UIKit

class ViewController: UIViewController,ButtonSendDataProtocol {
    
    
    @IBOutlet weak var btnSignIn: buttonXib!
    
    @IBOutlet weak var btnCreate: BtnCreate!
    
    @IBOutlet weak var btnGoogle: BtnGoogle!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignIn.btn(title: "Sign In")
        btnCreate.btnCreate(title: "Create New Account")
        btnGoogle.btnBorder()
        btnSignIn.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    func clickButton() {
        print("click")
    }



}

