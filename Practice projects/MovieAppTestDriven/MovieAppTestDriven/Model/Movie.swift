//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

struct Movie: Equatable, Hashable {
    var title: String
    var releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}

func ==(lhs: Movie, rhs: Movie) -> Bool {
    if lhs.title != rhs.title {
        return false
    }
    
    if lhs.releaseDate != rhs.releaseDate {
        return false
    }
    
    return true
}
