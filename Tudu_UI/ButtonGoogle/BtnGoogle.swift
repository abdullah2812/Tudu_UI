//
//  BtnGoogle.swift
//  Tudu_UI
//
//  Created by Irianda on 20/02/22.
//

import UIKit

class BtnGoogle: UIView {
    
    @IBOutlet weak var btnGoogle: UIButton!
    
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
    }
    
    func btnBorder() {
        btnGoogle.layer.cornerRadius = 10
    }
    
    

}
