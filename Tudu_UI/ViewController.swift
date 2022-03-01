//
//  ViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 19/02/22.
//

import UIKit
import Firebase
import GoogleSignIn

class ViewController: UIViewController,ButtonSendDataProtocol, ButtonSendDataGoogle, GIDSignInDelegate {
   
    
    @IBOutlet weak var btnSignIn: buttonXib!
    
    @IBOutlet weak var btnCreate: BtnCreate!
    
    @IBOutlet weak var btnGoogle: BtnGoogle!
    
    var name = ""
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignIn.btn(title: "Sign In")
        btnCreate.btnCreate(title: "Create New Account")
        btnGoogle.btnBorder()
        btnSignIn.delegate = self
        btnGoogle.delegate = self
        
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error
        {
            print("\(error.localizedDescription)")
            return
        }
        
        guard let authentication = user.authentication else {return}
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        Auth.auth().signIn(with: credential){ (authResult, error)in
            if let error = error{
                print("Firebase Error")
                print(error)
            }else{
                let name = authResult?.user.displayName!
                let email = authResult?.user.email!
                let photo = authResult?.user.photoURL!
                
                print(photo!)
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let detail:HomeViewController = storyboard.instantiateViewController(withIdentifier: "home") as! HomeViewController
                detail.l11 = name
                detail.l22 = email
                detail.l33 = photo
                self.navigationController?.pushViewController(detail, animated: true)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func clickButton() {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "home") as? HomeViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func click() {
        print("google")
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        GIDSignIn.sharedInstance().delegate = self
        let myVc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "home") as? HomeViewController
            self.navigationController?.pushViewController(myVc!, animated: true)
    }
}

