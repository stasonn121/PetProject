//
//  BaseViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import Foundation

class BaseViewModel {
    internal let applicationDependency: ApplicationDependency
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
}
