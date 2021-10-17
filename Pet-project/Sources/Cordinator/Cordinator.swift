//
//  Cordinator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

protocol Cordinator {
    var router: Router { get }
    var applicationDependency: ApplicationDependency { get }
    
    func route(to page: PageType)
    func presentModaly(page: PageType)
    func getRootScreen() -> UIViewController
}
