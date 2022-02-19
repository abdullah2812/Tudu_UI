//
//  ViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 19/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnSignIn: buttonXib!
    
    @IBOutlet weak var btnCreate: BtnCreate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignIn.btn(title: "Sign In")
        btnCreate.btnCreate(title: "Create New Account")
        // Do any additional setup after loading the view.
    }


}

