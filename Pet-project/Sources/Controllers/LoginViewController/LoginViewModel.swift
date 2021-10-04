//
//  LoginViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import Foundation

protocol LoginViewModelProtocol: BaseViewModelProtocol {
    func loginUser(authModel: AuthModel)
}

class LoginViewModel: LoginViewModelProtocol {
    var applicationDependency: ApplicationDependency
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
    
    func loginUser(authModel: AuthModel) {
        let authService = applicationDependency.authService
        authService.loginUser(authModel: authModel) { result in
            switch result {
            case .success(_): do {
                self.route(to: .postPage)
            }
            case .failure(_): break
            }
        }
    }
}
