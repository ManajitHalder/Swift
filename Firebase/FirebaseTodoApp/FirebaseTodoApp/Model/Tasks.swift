//
// Created by Manajit Halder
// For Project FirebaseTodoApp on 16/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

struct Tasks: Identifiable {
    var id: String
    var name: String
    var finishBy: Date
    var budget: Double
    var notes: String
}
