//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 26/02/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

enum Fruit {
    case apples
    case oranges
    case peaches
    case grapes
    case banana
}

struct Initializer: View {
    
    let backgroundColor: Color
    let fruitCount: Int
    let fruit: Fruit
    let fruitName: String
    
    init(count: Int, fruit: Fruit) {
        self.fruitCount = count
        self.fruit = fruit
        
        switch fruit {
        case .apples:
            self.fruitName = "Apples"
            self.backgroundColor = .red
            
        case .oranges:
            self.fruitName = "Oranges"
            self.backgroundColor = .orange
            
        case .peaches:
            self.fruitName = "Peaches"
            self.backgroundColor = .purple
            
        case .grapes:
            self.fruitName = "Grapes"
            self.backgroundColor = .green
            
        case .banana:
            self.fruitName = "Banana"
            self.backgroundColor = .yellow
        }
    }
    
    var body: some View {
        
        VStack(spacing: 10) {
            Text("\(fruitCount)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(fruitName)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct Initializer_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(showsIndicators: true) {
            VStack {
                Initializer(count: 534, fruit: .apples)
                Initializer(count: 135, fruit: .oranges)
                Initializer(count: 524, fruit: .banana)
                Initializer(count: 533, fruit: .peaches)
                Initializer(count: 455, fruit: .grapes)
            }
        }
    }
}
