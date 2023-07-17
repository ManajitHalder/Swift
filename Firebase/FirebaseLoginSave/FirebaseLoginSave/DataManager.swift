//
// Created by Manajit Halder
// For Project FirebaseLoginSave on 12/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI
import Firebase

// Fetch Dogs data from Firebase database
class DataManager: ObservableObject {
    @Published var dogs: [Dog] = []
    
    init() {
        fetchDogs()
    }
    
    func fetchDogs() {
        dogs.removeAll()
        
        let db = Firestore.firestore()
        let ref = db.collection("Dogs")
        ref.getDocuments(completion: { (snapshot, error) in
            guard error != nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    let id = data["id"] as? String ?? ""
                    let name = data["name"] as? String ?? ""
                    
                    let dog = Dog(id: id, name: name)
                    self.dogs.append(dog)
                }
            }
        })
    }
    
    func addDog(withName name: String) {
        let db = Firestore.firestore()
        let ref = db.collection("Dogs").document()
        ref.setData(["name": name, "id": 9]) { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
