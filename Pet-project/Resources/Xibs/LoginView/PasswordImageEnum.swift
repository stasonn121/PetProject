//
//  PasswordImageEnum.swift
//  Pet-project
//
//  Created by Станислав Борисов on 06.10.2021.
//

import UIKit

enum PasswordImageEnum {
    case eyeImage
    case eyeSlashImage
    
    var value: UIImage {
        switch self {
        case .eyeImage: return UIImage(systemName: "eye") ?? UIImage()
        case .eyeSlashImage: return UIImage(systemName: "eye.slash") ?? UIImage()
        }
    }
}
