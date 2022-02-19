//
//  BtnCreate.swift
//  Tudu_UI
//
//  Created by Irianda on 20/02/22.
//

import UIKit

class BtnCreate: UIView {

    @IBOutlet weak var btnCreate: UIButton!
    
    override init(frame:CGRect){
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder:NSCoder){
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let nibName = String(describing: BtnCreate.self)
        let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)![0] as! UIView
        view.frame = bounds
        addSubview(view)
        backgroundColor = .clear
    }
    
    func btnCreate(title:String) {
        btnCreate.setTitle(title, for: .normal)
        btnCreate.layer.cornerRadius = 10
        btnCreate.layer.borderWidth = 2
        btnCreate.layer.borderColor = #colorLiteral(red: 0.1607843137, green: 0.2039215686, blue: 0.8156862745, alpha: 1)
    }
    
}
