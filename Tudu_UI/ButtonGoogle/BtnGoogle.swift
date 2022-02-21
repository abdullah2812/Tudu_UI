//
//  BtnGoogle.swift
//  Tudu_UI
//
//  Created by Irianda on 20/02/22.
//

import UIKit

class BtnGoogle: UIView,UINavigationControllerDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var btnGoogle: UIButton!
    
    var dataGoogle : ButtonSendGoogle!
    
    override init(frame:CGRect){
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit()  {
        let nibName = String(describing: BtnGoogle.self)
        let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)![0] as! UIView
        view.frame = bounds
        addSubview(view)
        backgroundColor = .clear
        btnGoogle.addTarget(self, action: #selector(targetButton), for: .touchUpInside)
    }
    
    @objc func targetButton(){
        dataGoogle.btnDataGoogle()
    }
    
    func btnBorder() {
        btnGoogle.layer.cornerRadius = 10
    }
}

protocol ButtonSendGoogle {
    func btnDataGoogle()
    
}


