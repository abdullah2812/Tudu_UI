//
//  buttonXib.swift
//  Tudu_UI
//
//  Created by Irianda on 19/02/22.
//

import UIKit

class buttonXib: UIView,UINavigationControllerDelegate,UITextFieldDelegate {
    
    @IBOutlet weak var btnXib: UIButton!
    
    var delegate : ButtonSendDataProtocol!
    
    override init(frame:CGRect){
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder:NSCoder){
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let nibName = String(describing: buttonXib.self)
        let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)![0] as! UIView
        view.frame = bounds
        addSubview(view)
        backgroundColor = .clear
        btnXib.addTarget(self, action: #selector(targetButton), for: .touchUpInside)
    }
    
    @objc func targetButton(){
        delegate.clickButton()
    }
    
    func btn(title:String) {
        btnXib.setTitle(title, for: .normal)
        btnXib.layer.cornerRadius = 10
    }
}

protocol ButtonSendDataProtocol {
    func clickButton()
}
