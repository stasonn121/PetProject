//
//  LoginMediator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 05.06.2021.
//

import UIKit

class LoginMediator: NSObject, UITextFieldDelegate {
    
    weak var viewController: LoginViewController?
    weak var loginView: LoginView?
    
    init(viewController: LoginViewController) {
        super.init()
        self.viewController = viewController
        self.loginView = viewController.view as? LoginView
        self.setupDelegates()
    }
    
    func setupDelegates() {
        loginView?.emailTextField.delegate = self
        loginView?.passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
