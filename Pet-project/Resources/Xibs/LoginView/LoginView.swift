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
    func onClickLoginButton(emailLabel: UITextField, passwordLabel: UITextField)
}

class LoginView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var createAccountLabel: UILabel!
    @IBOutlet weak var loginView: UIButton!
    @IBOutlet weak var spinerView: UIActivityIndicatorView!
    
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
        setupTextFields()
        setupSpinerView()
        setupTapGesture()
    }
    
    private func setupTextFields() {
        emailTextField.customDelegate = self
        passwordTextField.customDelegate = self
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
    
    private func setupSpinerView() {
        spinerView.alpha = 0.3
    }
    
    @IBAction func onClickLoginButton(_ sender: UIButton) {
        delegate?.onClickLoginButton(emailLabel: emailTextField, passwordLabel: passwordTextField)
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

extension LoginView: CustomTextFieldDelegate {
    func textField(_ textField: CustomTextField, onClickRight imageView: UIImageView) {
        guard textField == passwordTextField else { return }
        if (passwordTextField.isSecureTextEntry) {
            passwordTextField.rightImage = PasswordImageEnum.eyeImage.value
            passwordTextField.isSecureTextEntry = false
        } else {
            passwordTextField.rightImage = PasswordImageEnum.eyeSlashImage.value
            passwordTextField.isSecureTextEntry = true
        }
    }
}
