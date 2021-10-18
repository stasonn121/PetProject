//
//  LoginViewController.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var loginView: LoginView!
    var viewModel: LoginViewModelType!
    var mediator: LoginMediator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = LoginMediator(viewController: self)
        initViewModelListeners()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func toggleSpiner(isShow: Bool) {
        if isShow {
            loginView.spinerView.startAnimating()
        } else {
            loginView.spinerView.stopAnimating()
        }
    }
    
    private func initViewModelListeners() {
        viewModel.needShowError = { [weak self] alertModel in
            DispatchQueue.main.async {
                self?.toggleSpiner(isShow: false)
                self?.showAlert(alertModel: alertModel)
            }
        } 
    }

}
