//
//  Cordinator.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

protocol Cordinator {
    func route(to page: PageType)
    func getRootScreen() -> UIViewController
}
