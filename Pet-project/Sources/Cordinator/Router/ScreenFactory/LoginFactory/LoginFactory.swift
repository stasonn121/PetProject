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
        let viewModel = LoginViewModel(cordinator: cordinator)
        vc.viewModel = viewModel
        return vc
    }
}
