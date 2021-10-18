//
//  AuthResult.swift
//  Pet-project
//
//  Created by Станислав Борисов on 02.10.2021.
//

import Foundation
import Firebase

enum AuthResult {
    case success(AuthData)
    case failure(Error)
}

struct AuthData {
    let user: User
    let credential: AuthCredential?
    let addtionalUserInfo: AdditionalUserInfo?
}
