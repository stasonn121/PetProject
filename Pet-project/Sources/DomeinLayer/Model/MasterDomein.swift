//
//  Master.swift
//  Pet-project
//
//  Created by Станислав Борисов on 18.10.2021.
//

import Foundation

struct MasterDomein {
    var id: Int
    var name: String
    var availableServices: [String]
    var orders: [OrderDomein]
}
