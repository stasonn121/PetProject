//
//  ScreenFactory.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

protocol ScreenFactory {
    func getScreen(pageType: PageType, cordinator: Cordinator) -> UIViewController
}
