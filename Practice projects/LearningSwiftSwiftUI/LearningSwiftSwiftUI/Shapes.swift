//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 01/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
            .stroke()
            .border(.blue)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
