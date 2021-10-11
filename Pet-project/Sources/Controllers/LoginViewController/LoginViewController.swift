//
//  LoginViewController.swift
//  Pet-project
//
//  Created by Stas B. on 03.06.2021.
//

import UIKit

class LoginViewController: BaseViewController {
    
    @IBOutlet weak var loginView: LoginView!
    var viewModel: LoginViewModelProtocol!
    var mediator: LoginMediator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediator = LoginMediator(viewController: self)
        initClosureViewModel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func initClosureViewModel() {
        viewModel.needShowError = { [weak self] alertModel in
            DispatchQueue.main.async {
                self?.showAlert(alertModel: alertModel)
            }
        }
    }

}
