//
//  LoginFactory.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class LoginFactory {
    static func getLoginPage(cordinator: Cordinator) -> LoginViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VC1") as! LoginViewController
        
        let authService = (UIApplication.shared.delegate as! AppDelegate).authService
        
        let applicationDependency = ApplicationDependency(coordinator: cordinator,
                                                          authService: authService)
        
        let viewModel = LoginViewModel(applicationDependency: applicationDependency)
        vc.viewModel = viewModel
        return vc
    }
}
