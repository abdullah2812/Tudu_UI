//
//  VerifyViewController.swift
//  Tudu_UI
//
//  Created by Irianda on 31/03/22.
//

import UIKit
import AEOTPTextField

class VerifyViewController: UIViewController,ButtonSendDataProtocol {
  
    
   
    @IBOutlet weak var OTPField: AEOTPTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Verify Phone Number"
        OTPField.otpDelegate = self
        OTPField.configure(with: 4)
        OTPField.otpFontSize = 8
        OTPField.otpTextColor = .systemOrange
        OTPField.otpCornerRaduis = 12
        OTPField.otpFilledBorderColor = .gray
        
        
        

        // Do any additional setup after loading the view.
    }
    
    func clickButton() {
        //sebentar
    }
    
}

extension VerifyViewController:AEOTPTextFieldDelegate{
    func didUserFinishEnter(the code: String) {
        print(code)
    }
}
