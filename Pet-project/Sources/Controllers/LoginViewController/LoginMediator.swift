//
//  LoginMediator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 05.06.2021.
//

import UIKit

class LoginMediator: NSObject {
    
    weak var viewController: LoginViewController?
    
    init(viewController: LoginViewController) {
        super.init()
        self.viewController = viewController
        self.setupDelegates()
    }
    
    func setupDelegates() {
        viewController?.loginView?.emailTextField.delegate = self
        viewController?.loginView?.passwordTextField.delegate = self
        viewController?.loginView?.delegate = self
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
        self.viewController?.performSegue(withIdentifier: "register", sender: nil)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "VC2")
//        viewController?.navigationController?.navigationBar.isHidden = false
//        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
    func onClickForgotLabel(label: UILabel) {
        print("Forgot")
    }
    
    func onClickLoginButton(emailLabel: UITextField, passwordLabel: UITextField) {
        let authService = (UIApplication.shared.delegate as! AppDelegate).authService
        let authModel = AuthModel(email: emailLabel.text!, password: passwordLabel.text!)
        authService.loginUser(authModel: authModel) { result in
            switch result {
            case .success(_): do {
                self.viewController?.viewModel?.cordinator.route(to: .postPage)
            }
            case .failure(_): break
            }
        }
    }
}