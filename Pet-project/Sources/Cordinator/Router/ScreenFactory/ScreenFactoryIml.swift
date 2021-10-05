//
//  ScreenFactoryIml.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class ScreenFactoryIml: ScreenFactory {
    func getScreen(pageType: PageType, applicationDependency: ApplicationDependency) -> UIViewController {
        switch pageType {
        case .loginPage: return LoginFactory.getLoginPage(applicationDependency: applicationDependency)
        case .postPage: return PostsFactory.getPostsPage(applicationDependency: applicationDependency)
        case .forgetPage: return ForgetFactory.getForgetPage(applicationDependency: applicationDependency)
        }
    }
    
}
