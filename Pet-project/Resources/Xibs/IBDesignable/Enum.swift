//
//  Enum.swift
//  Pet-project
//
//  Created by Станислав Борисов on 02.09.2021.
//

import Foundation

enum Event: String {
    case a(Int) = "A"
    case b(String) = "B"
}

Event.a(2).rawValue
