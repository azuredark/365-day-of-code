//
//  ThirdDataController.swift
//  CoreDataTechnique
//
//  Created by Mehmet Ateş on 21.05.2022.
//

import Foundation

import CoreData

class ThirdDataController: ObservableObject{
    let container = NSPersistentContainer(name: "ThirdDataModel")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
    
}
