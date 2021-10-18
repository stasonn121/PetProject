//
//  LoginMediator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 05.06.2021.
//

import UIKit

class LoginMediator: NSObject {
    
    weak var viewController: LoginViewController!
    
    init(viewController: LoginViewController) {
        super.init()
        self.viewController = viewController
        self.setupDelegates()
    }
    
    func setupDelegates() {
        viewController.loginView?.emailTextField.delegate = self
        viewController.loginView?.passwordTextField.delegate = self
        viewController.loginView?.delegate = self
    }
    
}

extension LoginMediator: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension LoginMediator: LoginViewDelegate {
    func onClickCreateAccountLabel(label: UILabel) {
        self.viewController.viewModel.presentModaly(page: .registerPage)
    }
    
    func onClickForgotLabel(label: UILabel) {
        print("Forgot")
    }
    
    func onClickLoginButton(emailLabel: UITextField, passwordLabel: UITextField) {
        let authModel = AuthModel(email: emailLabel.text!, password: passwordLabel.text!)
        self.viewController.toggleSpiner(isShow: true)
        viewController.viewModel.loginUser(authModel: authModel) { [weak self] authResult in
            DispatchQueue.main.async {
                self?.viewController?.viewModel.route(to: .postPage)
                self?.viewController?.toggleSpiner(isShow: false)
            }
        }
    }
}
