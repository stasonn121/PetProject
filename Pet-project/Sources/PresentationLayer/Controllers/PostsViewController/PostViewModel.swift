//
//  PostsViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 19.09.2021.
//

import Foundation

protocol PostViewModelType {
    var applicationDependency: ApplicationDependency { get }
    
    func route(to page: PageType)
}

class PostViewModel: PostViewModelType {
    var applicationDependency: ApplicationDependency
    
    init(applicationDependency: ApplicationDependency) {
        self.applicationDependency = applicationDependency
    }
    
    func route(to page: PageType) {
        applicationDependency.coordinator.route(to: page)
    }
    
}
