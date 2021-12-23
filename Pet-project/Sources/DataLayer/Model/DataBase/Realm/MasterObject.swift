//
//  Master.swift
//  Pet-project
//
//  Created by Станислав Борисов on 18.10.2021.
//

import Foundation
import RealmSwift

class MasterObject: Object {
    @Persisted var id: Int
    @Persisted var name: String
    @Persisted var availableServices: List<String>
    @Persisted var orders: List<OrderObject>
}

extension MasterObject {
    func mapToMasterDomein() -> MasterDomein {
        var listServices = [String]()
        self.availableServices.forEach { listServices.append($0) }
        
        var orders = [OrderDomein]()
        self.orders.forEach { orders.append($0.mapToOrderDomein())}
        
        let masterObject = MasterDomein(id: self.id,
                                        name: self.name,
                                        availableServices: listServices,
                                        orders: orders)
        return masterObject
    }
}

extension MasterDomein {
    func mapToMasterObject() -> MasterObject {
        let listServices = List<String>()
        self.availableServices.forEach { listServices.append($0) }
        
        let orders = List<OrderObject>()
        self.orders.forEach { orders.append($0.mapToOrderObject())}
        
        let masterObject = MasterObject()
        masterObject.id = self.id
        masterObject.name = self.name
        masterObject.availableServices = listServices
        
        return masterObject
    }
}
