//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 26/02/23
// Using Swift 5.0 on MacOS 13.2
// 

import SwiftUI

struct PaddingAndSpacing: View {
    var body: some View {
        
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("iOS App")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)

                Text("iOS application development is my passion. I have started developing applications related to my work. Soon I will start working on more interesting applications.")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .padding(.vertical, 10)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(
                        color: Color.black.opacity(0.5),
                        radius: 20,
                        y: 10
                    )
            )
            .padding(.horizontal, 10)
            
        }
    }
}

struct PaddingAndSpacing_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacing()
    }
}
