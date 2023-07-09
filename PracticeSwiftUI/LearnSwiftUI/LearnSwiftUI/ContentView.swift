//
// Created by Manajit Halder
// IOS & MacOS Apps
// Youtube channel: www.yout,ssd.com,
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "envelope.badge.fill")
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .foregroundColor(Color.red)
            .scaleEffect(2, anchor: .center)
            .scaleEffect(1.1, anchor: .center)
            .scaleEffect(1.1, anchor: .center)
            .scaleEffect(1.1, anchor: .center)
            .scaleEffect(1.1, anchor: .center)
            .border(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
