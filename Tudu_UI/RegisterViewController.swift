//
//  RegisterViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 01/03/22.
//

import UIKit

class RegisterViewController: UIViewController,ButtonSendDataProtocol {
    
    @IBOutlet weak var btnRegister: buttonXib!
    
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupHideKeyboardOnTap()
        
        title = "Register"
        btnRegister.btn(title: "Register")
        btnRegister.delegate = self
        pwTextField.isSecureTextEntry = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    func clickButton() {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "verify") as? VerifyViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }

}


extension UIViewController {
    /// Call this once to dismiss open keyboards by tapping anywhere in the view controller
    func setupHideKeyboardOnTap() {
        self.view.addGestureRecognizer(self.endEditingRecognizer())
        self.navigationController?.navigationBar.addGestureRecognizer(self.endEditingRecognizer())
    }
    
    /// Dismisses the keyboard from self.view
    private func endEditingRecognizer() -> UIGestureRecognizer {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(self.view.endEditing(_:)))
        tap.cancelsTouchesInView = false
        return tap
    }
}
