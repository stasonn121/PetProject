//
//  RegisterViewController.swift
//  Pet-project
//
//  Created by Станислав Борисов on 17.10.2021.
//

import UIKit
import SnapKit

class RegisterViewController: BaseViewController {
    var viewModel: RegisterViewModelType!
    
    private var registerView: RegisterView = {
        var view = RegisterView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
}

extension RegisterViewController {
    private func setupLayouts() {
        self.view.addSubview(registerView)
        registerView.frame = view.bounds
    }
}
