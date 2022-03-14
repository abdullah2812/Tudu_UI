//
//  TextField.swift
//  Tudu_UI
//
//  Created by Irianda on 03/03/22.
//

import UIKit

class TextField: UIView {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit()  {
        let nibName = String(describing: TextField.self)
        let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)![0] as! UIView
        view.frame = bounds
        addSubview(view)
    }
    
    func data(placeholder:String) {
        lbl.text = placeholder
        textField.autocorrectionType = .no
        
    }
    
    
    @IBAction func textEdit(_ sender: UITextField) {
        
        if sender.text != ""{
            lbl.isHidden = true
        }else{
            lbl.isHidden = false
        }
    }
    

}
