//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 26/02/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

struct ForEachDemo: View {
    let data:[String] = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<3) { index in
                Text("\(data[index]) : \(index)")
            }
            ForEach(data.indices) { index in
                Text("\(data[index]) : \(index)")
            }
        }
    }
}

struct ForEachDemo_Previews: PreviewProvider {
    static var previews: some View {
        ForEachDemo()
    }
}
