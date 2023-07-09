//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 26/02/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

struct Stacks: View {
    var body: some View {
        
        VStack(spacing: 50) {
            ZStack {
                Rectangle()
                    .fill(Color.brown)
                    .frame(width: 300, height: 300)
                
                VStack(alignment: .center, spacing: 10) {
                    Rectangle()
                        .fill(Color.accentColor)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 130, height: 130)
                    
                    HStack(spacing: nil) {
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 100, height: 100)
                        
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 100, height: 100)
                        
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 100, height: 100)
                    }
                    .padding(.all)
                    .background(Color.green)
                }
                .padding(.all)
                .background(Color.yellow)
            }
            
            Text("100")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        .frame(width: 500, height: 700)
        .background(Color.red)
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
