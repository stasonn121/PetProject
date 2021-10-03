//
//  AuthResult.swift
//  Pet-project
//
//  Created by Станислав Борисов on 02.10.2021.
//

import Foundation
import Firebase

enum AuthResult {
    case success(AuthDataResult)
    case failure(Error)
}
