//
// Created by Manajit Halder
// For Project FirebaseTodoApp on 16/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation
import Firebase
import CoreMedia

class ViewModel: ObservableObject {
    @Published var list = [Tasks]()
    
    func refreshData() {
        self.getData()
    }
    
    func addData(name: String, finishBy: Date, budget: Double, notes: String) {
        // Get reference to firestore database
        let db = Firestore.firestore()
        
        // Add a document to the "tasks" collection
        db.collection("tasks").addDocument(data: ["name": name,
                                                  "finishBy": finishBy,
                                                  "budget": budget,
                                                  "notes": notes]) { [self] error in
            if error != nil {
                self.getData()
            } else {
                // Handle error
            }
        }
    }
    
    func deleteData(item: Tasks) {
        // Get reference to firestore database
        let db = Firestore.firestore()
        
        // Delete a document base on Tasks it
        db.collection("tasks").document(item.id).delete { error in
            if error == nil {
                
                // updating UI
                DispatchQueue.main.async {
                    // Remove the task from list using list.removeAll(where:...)
                    self.list.removeAll { task in
                        return task.id == item.id
                    }
                }
            } else {
                // Handle error
            }
        }
    }
    
    func getData() {
        // Get reference to firesotre database
        let db = Firestore.firestore()
        
        // Read documents
        db.collection("tasks").getDocuments { snapshot, error in
            if error == nil {
                // Get all the documents, create tasks and update list
                if let snapshot = snapshot {
                    
                    // Update the list items in main thread
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map({ item in
                            // Create a todo item for each document returned.
                            return Tasks(id: item.documentID,
                                         name: item["name"] as? String ?? "",
                                         finishBy: item["finishBy"] as? Date ?? Date(),
                                         budget: item["budget"] as? Double ?? 0.0,
                                         notes: item["notes"] as? String ?? "")
                        })
                    }
                } else {
                    // Snapshot error
                }
            } else {
                // Handle error
            }
        }
        
    }
    
    func updateData(updateTask: Tasks) {
        let db = Firestore.firestore()
        
        db.collection("tasks").document(updateTask.id).setData(["name" : "\(updateTask.name) updated"], merge: true) { error in
            if error == nil {
                self.getData()
            }
        }
    }
}
