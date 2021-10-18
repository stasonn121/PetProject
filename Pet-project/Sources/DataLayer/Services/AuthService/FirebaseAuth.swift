//
//  FirebaseAuthentication.swift
//  Pet-project
//
//  Created by Станислав Борисов on 02.10.2021.
//

import Firebase

class FirebaseAuth: AuthService {
    
    static var shared: AuthService = FirebaseAuth()
    
    private init() {}
    
    func configureService() {
        FirebaseApp.configure()
    }
    
    func createUser(authModel: AuthModel, completion: @escaping (_ result: AuthResult) -> Void) {
        Auth.auth().createUser(withEmail: authModel.email, password: authModel.password) { authResult, error in
            if let authResult = authResult {
                let authData = AuthData(user: authResult.user,
                                        credential: authResult.credential,
                                        addtionalUserInfo: authResult.additionalUserInfo)
                completion(AuthResult.success(authData))
            }
            
            if let error = error {
                completion(AuthResult.failure(error))
            }
        }
    }
    
    func loginUser(authModel: AuthModel, completion: @escaping (_ result: AuthResult) -> Void) {
        Auth.auth().signIn(withEmail: authModel.email, password: authModel.password) { authResult, error in
            if let authResult = authResult {
                let authData = AuthData(user: authResult.user,
                                        credential: authResult.credential,
                                        addtionalUserInfo: authResult.additionalUserInfo)
                completion(AuthResult.success(authData))
            }
            
            if let error = error {
                completion(AuthResult.failure(error))
            }
        }
    }
    
}
