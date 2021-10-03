//
//  Router.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class CordinatorIml: Cordinator {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func route(to page: PageType) {
        router.route(to: page, cordinator: self)
    }
    
    func getRootScreen() -> UIViewController {
        return router.getRootScreen()
    }
}
