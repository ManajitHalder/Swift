//
// Created by Manajit Halder
// For Project TipCalculator on 24/11/22
// Using Swift 5.0 on MacOS 12.4
//
// appicon.co to generate icons

import SwiftUI

struct ContentView: View {
    @State private var total = "100"
    @State private var tipPercent = 15.0
    
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .padding()
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            HStack {
                Text("Bill Amount: ₹")
                    .foregroundColor(.purple)
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
                
                TextField("Amount", text: $total)
                    .padding()
                    .foregroundColor(.black)
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
                    .background(.white)
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding()
            
            if let totalAmount = Double(total) {
                Text("Tip Amount: ₹ \(totalAmount * tipPercent / 100.0, specifier: "%0.2f")")
                    .foregroundColor(.purple)
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
            } else {
                Text("Please enter a numeric value")
                    .foregroundColor(.purple)
                    .font(.system(size: 25, weight: .heavy, design: .rounded))
            }
        }
        .padding()
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
