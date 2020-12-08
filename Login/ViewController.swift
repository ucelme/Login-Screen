//
//  ViewController.swift
//  Login
//
//  Created by Oleg Starkin on 12/7/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: TextFieldWithPadding!
    @IBOutlet weak var passwordTextField: TextFieldWithPadding!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var enterGoogle: UIButton!
    @IBOutlet weak var enterGithub: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
                
        enterGoogle.layer.cornerRadius = 15.0
        enterGoogle.layer.borderWidth = 1.0
        enterGoogle.layer.borderColor = UIColor.lightGray.cgColor
        
        enterGithub.layer.cornerRadius = 15.0
        enterGithub.layer.borderWidth = 1.0
        enterGithub.layer.borderColor = UIColor.lightGray.cgColor
        
        enterButton.layer.cornerRadius = 25.0
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: emailTextField.frame.height - 1, width: emailTextField.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        emailTextField.borderStyle = UITextField.BorderStyle.none
        emailTextField.layer.addSublayer(bottomLine)
        emailTextField.font = UIFont(name: "SourceSansPro-Regular", size: 16)
        passwordTextField.font = UIFont(name: "SourceSansPro-Regular", size: 16)
        
        stackView.layer.cornerRadius = 15.0
        stackView.layer.borderWidth = 1.0
        stackView.layer.borderColor = UIColor.lightGray.cgColor


        
    }


}

class TextFieldWithPadding: UITextField {
    var textPadding = UIEdgeInsets(
        top: 10,
        left: 20,
        bottom: 10,
        right: 20
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}
