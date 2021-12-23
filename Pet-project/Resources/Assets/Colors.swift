//
//  Colors.swift
//  Pet-project
//
//  Created by Станислав Борисов on 26.10.2021.
//

import Foundation
import UIKit

enum Colors: String {
    case yellowBackground = "YellowBackground"
}

extension Colors {
    var value: UIColor {
        switch self {
            case .yellowBackground: return UIColor(named: self.rawValue) ?? .yellow
        }
    }
}
