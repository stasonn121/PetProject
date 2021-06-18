//
//  LoginView.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
    func onClickCreateAccountLabel(label: UILabel)
    func onClickForgotLabel(label: UILabel)
    func onClickLoginButton(label: UIButton)
}

class LoginView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var createAccountLabel: UILabel!
    
    weak var delegate: LoginViewDelegate?
    
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
        let tapForgotLabel = UITapGestureRecognizer(target: self,
                                                    action: #selector(onClickForgotLabel))
        forgotLabel.isUserInteractionEnabled = true
        forgotLabel.addGestureRecognizer(tapForgotLabel)
        
        let tapCreateAccountLabel = UITapGestureRecognizer(target: self,
                                                           action: #selector(onClickCreateAccountLabel))
        createAccountLabel.isUserInteractionEnabled = true
        createAccountLabel.addGestureRecognizer(tapCreateAccountLabel)
        
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(hideKeyboard))
        contentView.addGestureRecognizer(tapGesture)
    }
    
    @IBAction func onClickLoginButton(_ sender: UIButton) {
        delegate?.onClickLoginButton(label: sender)
    }
    
    @objc func onClickForgotLabel() {
        delegate?.onClickForgotLabel(label: forgotLabel)
    }
    
    @objc func onClickCreateAccountLabel() {
        delegate?.onClickCreateAccountLabel(label: createAccountLabel)
    }
    
    @objc func hideKeyboard() {
        contentView.endEditing(true)
    }
}
