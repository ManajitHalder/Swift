//
// Created by Manajit Halder
// For Project DiffObservedObjVSStateObj on 01/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

final class CounterViewModel: ObservableObject {
    @Published var count = 0

    func incrementCounter() {
        count += 1
    }
}

//final class CounterViewModel: ObservableObject {
//    private(set) var count = 0
//
//    func incrementCounter() {
//        count += 1
//        objectWillChange.send()
//    }
//}

struct ContentView: View {
//    @ObservedObject var viewModel = CounterViewModel()
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            Text("Count is: \(viewModel.count)")
            Button("Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}

struct RandomNumberView: View {
    @State var randomNumber = 0
    
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Random number is: \(randomNumber)")
                Button("Randomize number") {
                    randomNumber = Int((0..<100).randomElement() ?? 0)
                }
            }
            ContentView()
        }
        .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RandomNumberView()
    }
}
