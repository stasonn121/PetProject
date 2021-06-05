//
//  LoginViewController.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var mediator: LoginMediator?

    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = LoginMediator(viewController: self)
        hideKeyboardWhenTappedAround()
    }

    func hideKeyboardWhenTappedAround() {
         let tapGesture = UITapGestureRecognizer(target: self,
                          action: #selector(hideKeyboard))
         view.addGestureRecognizer(tapGesture)
     }

     @objc func hideKeyboard() {
         view.endEditing(true)
     }
}
