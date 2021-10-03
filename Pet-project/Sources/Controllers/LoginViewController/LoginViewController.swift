//
//  LoginViewController.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet var loginView: LoginView!
    var mediator: LoginMediator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = LoginMediator(viewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }

}
