//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Lera Savchenko on 12.03.24.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write{
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write({
            realm.delete(place)
        })
    }
}
