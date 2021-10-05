//
//  Router.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

protocol Router {
    func route(to screen: PageType, applicationDependency: ApplicationDependency)
    func getRootScreen() -> UIViewController
}
