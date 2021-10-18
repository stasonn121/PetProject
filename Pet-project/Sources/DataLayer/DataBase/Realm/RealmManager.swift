//
//  RealmManager.swift
//  Pet-project
//
//  Created by Станислав Борисов on 17.10.2021.
//

import Foundation
import RealmSwift

class RealmManager: DataBaseType {
    static var shared: DataBaseType = {
        return RealmManager()
    }()
    
    private init() { }
    
    func saveContext() {

    }
    
    func master(operation: DataBaseOperationType<MasterDomein>) {
        switch operation {
        case .add(let master): do { }
        case .remove(let master): do { }
        case .update(let master): do { }
        }
    }
    
    func order(operation: DataBaseOperationType<OrderDomein>) {
        
    }
    
}
