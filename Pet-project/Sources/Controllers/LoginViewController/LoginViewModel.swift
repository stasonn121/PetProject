//
//  LoginViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import Foundation

protocol LoginViewModelProtocol {
    var applicationDependency: ApplicationDependency { get }
    var needShowError: ((AlertModel) -> Void)? { get set }
    
    func loginUser(authModel: AuthModel, completion: ((AuthData) -> Void)?)
    func route(to page: PageType)
}

class LoginViewModel: LoginViewModelProtocol {
    var applicationDependency: ApplicationDependency
    var needShowError: ((AlertModel) -> Void)?
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
    
    func loginUser(authModel: AuthModel, completion: ((AuthData) -> Void)?) {
        let authService = applicationDependency.authService
        authService.loginUser(authModel: authModel) { result in
            switch result {
            case .success(let authData): completion?(authData)
            case .failure(let error): do {
                let alertModel = AlertModel(title: "Error", message: error.localizedDescription)
                self.needShowError?(alertModel)
            }
            }
        }
    }
}
