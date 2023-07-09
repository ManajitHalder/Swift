//
// Created by Manajit Halder
// For Project Scrumdinger on 26/03/23
// Using Swift 5.0 on MacOS 13.2
// 

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
