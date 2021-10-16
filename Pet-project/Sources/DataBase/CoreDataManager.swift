//
//  CoreDataManager.swift
//  Pet-project
//
//  Created by Станислав Борисов on 18.09.2021.
//

import CoreData

class CoreDataManager: DataManagerType {
    
    static var shared: DataManagerType = {
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

}

extension CoreDataManager: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
