//
//  CoreDataExampleApp.swift
//  CoreDataExample
//
//  Created by Batuhan Ulutürk on 20.06.2024.
//

import SwiftUI
import CoreData

@main
struct CoreDataExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//Aşağıdaki Kodlar hazır olduğu için direkt kopyala yapıştı olarak kullanılıyor.
var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "Model")
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()

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
