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
    
    func route(to screen: PageType, applicationDependency: ApplicationDependency) {
        let viewController = factory.getScreen(pageType: screen, applicationDependency: applicationDependency)
        setScreenSettings(pageType: screen)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func presentModaly(screen: PageType, applicationDependency: ApplicationDependency) {
        let viewController = factory.getScreen(pageType: screen, applicationDependency: applicationDependency)
        viewController.modalPresentationStyle = .pageSheet
        setScreenSettings(pageType: screen)
        navigationController.present(viewController, animated: true, completion: nil)
    }
    
    func getRootScreen() -> UIViewController {
        return navigationController
    }
    
}

extension MainRouter {
    private func setScreenSettings(pageType: PageType) {
        switch pageType {
        case .loginPage: setLoginSettings()
        case .registerPage: setRegisterSettings()
        case .postPage: setPostSettings()
        case .forgetPage: setForgetSettings()
        }
    }
    
    private func setLoginSettings() {
        navigationController.navigationBar.isHidden = true
    }
    
    private func setRegisterSettings() {
        navigationController.navigationBar.isHidden = true
    }
    
    private func setPostSettings() {
        navigationController.navigationBar.isHidden = false
    }
    
    private func setForgetSettings() {
        navigationController.navigationBar.isHidden = false
    }
}
