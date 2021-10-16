//
//  ApplicationDependency.swift
//  Pet-project
//
//  Created by Stas B. on 04.10.2021.
//

import Foundation
import UIKit

struct ApplicationDependency {
    var coordinator: Cordinator!
    let authService: AuthService
    let networkManager: NetworkManagerType
    let dataManager: DataManagerType
    
    init() {
        authService = FirebaseAuth.shared
        networkManager = NetworkManager.shared
        dataManager = CoreDataManager.shared
    }
}
