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
    
    func saveContext() { }
    
    func master(operation: DataBaseOperationType<MasterDomein>) {
        switch operation {
        case .add(let master): addMaster(master: master)
        case .remove(let master): removeMaster(master: master)
        case .update(let master): updateMaster(master: master)
        }
    }
    
    func order(operation: DataBaseOperationType<OrderDomein>) {
        switch operation {
        case .add(let order): addOrder(order: order)
        case .remove(let order): removeOrder(order: order)
        case .update(let order): updateOrder(order: order)
        }
    }
    
}

//MARK: - Master operation
extension RealmManager {
    
    private func addMaster(master: MasterDomein) {
        print(Realm.Configuration.defaultConfiguration.fileURL)
        let masterObject = master.mapToMasterObject()
        try! Realm().write {
            try! Realm().add(masterObject)
        }
    }
    
    private func removeMaster(master: MasterDomein) {
        
    }
    
    private func updateMaster(master: MasterDomein) {
        
    }
    
    func getAllMasterOrders() -> [MasterDomein] {
        let arrayMasterObjects = try! Realm().objects(MasterObject.self)
        return arrayMasterObjects.map { $0.mapToMasterDomein() }
    }
    
}

//MARK: - Order operation
extension RealmManager {
    
    private func addOrder(order: OrderDomein) {
        
    }
    
    private func removeOrder(order: OrderDomein) {
        
    }
    
    private func updateOrder(order: OrderDomein) {
    
    }
}
