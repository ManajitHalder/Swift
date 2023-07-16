//
// Created by Manajit Halder
// For Project FirebaseChatApp on 14/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timeStamp: Date
}
