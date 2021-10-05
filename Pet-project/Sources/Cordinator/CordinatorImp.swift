//
//  Router.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class CordinatorIml: Cordinator {
    let router: Router
    var applicationDependency: ApplicationDependency
    
    init(router: Router, applicationDependency: ApplicationDependency) {
        self.router = router
        self.applicationDependency = applicationDependency
        self.applicationDependency.coordinator = self
    }
    
    func route(to page: PageType) {
        router.route(to: page, applicationDependency: applicationDependency)
    }
    
    func getRootScreen() -> UIViewController {
        return router.getRootScreen()
    }
}
