//
//  RegisterViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 17.10.2021.
//

import Foundation

protocol RegisterViewModelType {
    var applicationDependency: ApplicationDependency { get }
    var needShowError: ((AlertModel) -> Void)? { get set }
    
    func registerUser(authModel: AuthModel, completion: ((AuthData) -> Void)?)
    func route(to page: PageType)
}

class RegisterViewModel: RegisterViewModelType {
    var applicationDependency: ApplicationDependency
    var needShowError: ((AlertModel) -> Void)?
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func registerUser(authModel: AuthModel, completion: ((AuthData) -> Void)?) {
        applicationDependency.authService.createUser(authModel: authModel) { [weak self] result in
            switch result {
            case .success(let data): do {  }
            case .failure(let error): do {
                let alertModel = AlertModel(title: "Error", message: error.localizedDescription)
                self?.needShowError?(alertModel)
            }
            }
        }
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
    
}
