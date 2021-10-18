//
//  DataManagerType.swift
//  Pet-project
//
//  Created by Станислав Борисов on 16.10.2021.
//

import Foundation

enum DataBaseOperationType<T> {
    case add(T)
    case remove(T)
    case update(T)
}

protocol DataBaseType {
    static var shared: DataBaseType { get }
    
    func saveContext()
    
    func master(operation: DataBaseOperationType<MasterDomein>)
    func order(operation: DataBaseOperationType<OrderDomein>)
}
