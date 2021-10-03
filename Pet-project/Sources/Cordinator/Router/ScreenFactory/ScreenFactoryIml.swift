//
//  ScreenFactoryIml.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

class ScreenFactoryIml: ScreenFactory {
    func getScreen(pageType: PageType, cordinator: Cordinator) -> UIViewController {
        switch pageType {
        case .loginPage: return LoginFactory.getLoginPage(cordinator: cordinator)
        case .postPage: return PostsFactory.getPostsPage()
        case .forgetPage: return ForgetFactory.getForgetPage()
        }
    }
    
}
