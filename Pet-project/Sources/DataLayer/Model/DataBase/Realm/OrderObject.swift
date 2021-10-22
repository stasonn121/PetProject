//
//  OrderObject.swift
//  Pet-project
//
//  Created by Станислав Борисов on 18.10.2021.
//

import Foundation
import RealmSwift

class OrderObject: Object {
    @Persisted var name: String
}

extension OrderDomein {
    func mapToOrderObject() -> OrderObject {
        let orderObject = OrderObject()
        orderObject.name = self.name
        
        return orderObject
    }
}
