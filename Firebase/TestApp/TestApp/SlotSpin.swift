//
// Created by Manajit Halder
// For Project TestApp on 18/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct SlotSpin: View {
    @State private var credits = 1000
    @State private var slotImage1 = "slotAsset1"
    @State private var slotImage2 = "slotAsset2"
    @State private var slotImage3 = "slotAsset3"
    
    var body: some View {
        
        ZStack {
            Image("background-blue")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("SwiftUI Slots!")
                .font(.system(size: 40))
                .fontWeight(.bold)
                .foregroundColor(.white)
                
                Spacer()
                
                Text("Credits: \(credits)")
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack(spacing: 40) {
                    Image(slotImage1)
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                    Image(slotImage2)
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                    Image(slotImage3)
                        .resizable()
                        .frame(width: 90, height: 90)
                }
                .padding()
                
                Spacer()
                
                Button {
                    let spin1 = Int.random(in: 1...3)
                    let spin2 = Int.random(in: 1...3)
                    let spin3 = Int.random(in: 1...3)
                    
                    slotImage1 = "slotAsset\(spin1)"
                    slotImage2 = "slotAsset\(spin2)"
                    slotImage3 = "slotAsset\(spin3)"
                    
                    if spin1 == spin2 && spin1 == spin3 {
                        credits += 100
                    } else {
                        credits -= 10
                    }
                } label: {
                    Text("Spin")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .buttonStyle(.bordered)
                .background(.red)
                .clipShape(Capsule())
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SlotSpin_Previews: PreviewProvider {
    static var previews: some View {
        SlotSpin()
    }
}
