//
//  CoreDataManager.swift
//  Pet-project
//
//  Created by Станислав Борисов on 18.09.2021.
//

import CoreData

class CoreDataManager: DataBaseType {
    static var shared: DataBaseType = {
        return CoreDataManager()
    }()
    
    private init() { }
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Pet-project")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    #warning("need to be implemented")
    func master(operation: DataBaseOperationType<MasterDomein>) {
        
    }
    
    #warning("need to be implemented")
    func order(operation: DataBaseOperationType<OrderDomein>) {
        
    }

}

extension CoreDataManager: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
