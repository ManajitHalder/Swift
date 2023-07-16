//
// Created by Manajit Halder
// For Project FirebaseChatApp on 14/11/22
// Using Swift 5.0 on MacOS 12.4
// 
// https://www.youtube.com/watch?v=Zz9XQy8PRpQ
//

import SwiftUI
import Firebase

@main
struct FirebaseChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
