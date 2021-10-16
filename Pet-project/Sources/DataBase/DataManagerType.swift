//
//  DataManagerType.swift
//  Pet-project
//
//  Created by Станислав Борисов on 16.10.2021.
//

import Foundation

protocol DataManagerType {
    static var shared: DataManagerType { get }
    
    func saveContext()
}
