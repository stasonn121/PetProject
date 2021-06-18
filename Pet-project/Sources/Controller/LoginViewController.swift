//
//  LoginViewController.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginViewController: UIViewController {
    var mediator: LoginMediator?
    weak var loginView: LoginView?

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView = self.view as? LoginView
        mediator = LoginMediator(viewController: self)
        //NetworkManager().getData
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }

}
