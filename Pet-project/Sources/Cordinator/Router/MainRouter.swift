//
//  Router.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class MainRouter: Router {
    let navigationController: UINavigationController
    let factory: ScreenFactory
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.factory = ScreenFactoryIml()
    }
    
    func route(to screen: PageType, cordinator: Cordinator) {
        let viewController = factory.getScreen(pageType: screen, cordinator: cordinator)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func getRootScreen() -> UIViewController {
        return navigationController
    }
    
}

extension MainRouter {
    private func setScreenSettings(pageType: PageType) {
        switch pageType {
        case .loginPage: setLoginSettings()
        case .postPage: setPostSettings()
        case .forgetPage: setForgetSettings()
        }
    }
    
    private func setLoginSettings() {
        navigationController.navigationBar.isHidden = true
    }
    
    private func setPostSettings() {
        navigationController.navigationBar.isHidden = false
    }
    
    private func setForgetSettings() {
        navigationController.navigationBar.isHidden = false
    }
}
