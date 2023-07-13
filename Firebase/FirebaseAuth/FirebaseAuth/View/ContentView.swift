//
// Created by Manajit Halder
// For Project FirebaseAuth on 16/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .multilineTextAlignment(.center)
                .lineLimit(3)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
