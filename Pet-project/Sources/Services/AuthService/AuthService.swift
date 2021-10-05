//
//  AuthService.swift
//  Pet-project
//
//  Created by Станислав Борисов on 02.10.2021.
//

import Foundation

typealias completionBlock = (_ result: AuthResult) -> Void

protocol AuthService {
    static var share: AuthService { get }
    
    func configureService()
    func createUser(authModel: AuthModel, completion: @escaping completionBlock)
    func loginUser(authModel: AuthModel, completion: @escaping completionBlock)
}
