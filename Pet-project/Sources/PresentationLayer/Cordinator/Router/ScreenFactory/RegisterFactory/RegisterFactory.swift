//
//  RegisterFactory.swift
//  Pet-project
//
//  Created by Станислав Борисов on 17.10.2021.
//

import UIKit

class RegisterFactory {
    static func getRegisterPage(applicationDependency: ApplicationDependency) -> RegisterViewController {
        let vc = RegisterViewController()
        vc.view.backgroundColor = .white
        
        let viewModel = RegisterViewModel(applicationDependency: applicationDependency)
        vc.viewModel = viewModel
        return vc
    }
}
