//
//  BaseViewModel.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import Foundation

class BaseViewModel {
    internal let cordinator: Cordinator
    
    init(cordinator: Cordinator) {
        self.cordinator = cordinator
    }
}
