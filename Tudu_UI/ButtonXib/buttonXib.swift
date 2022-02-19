//
//  buttonXib.swift
//  Tudu_UI
//
//  Created by Irianda on 19/02/22.
//

import UIKit

class buttonXib: UIView {
    
    
    @IBOutlet weak var btnXib: UIButton!
    
    
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
    }
    
    func btn(title:String)  {
        btnXib.setTitle(title, for: .normal)
        btnXib.layer.cornerRadius = 10
    }

}
