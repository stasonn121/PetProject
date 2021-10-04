//
//  PostsViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import Foundation

class PostsViewModel: BaseViewModelProtocol {
    var applicationDependency: ApplicationDependency
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
    
}
