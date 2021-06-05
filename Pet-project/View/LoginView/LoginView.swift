//
//  LoginView.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var createAccountLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    private func initView() {
        Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        setupTapGesture()
    }
    
    private func setupTapGesture() {
        let tapForgotLabel = UITapGestureRecognizer(target: self, action: #selector(onClickForgotLabel))
        forgotLabel.isUserInteractionEnabled = true
        forgotLabel.addGestureRecognizer(tapForgotLabel)
        
        let tapCreateAccountLabel = UITapGestureRecognizer(target: self, action: #selector(onClickCreateAccountLabel))
        createAccountLabel.isUserInteractionEnabled = true
        createAccountLabel.addGestureRecognizer(tapCreateAccountLabel)
    }
    
    @IBAction func onClickLoginButton(_ sender: Any) {
        print("Login")
    }
    
    @objc func onClickForgotLabel() {
        print("Forgot")
    }
    
    @objc func onClickCreateAccountLabel() {
        print("Account")
    }

}
