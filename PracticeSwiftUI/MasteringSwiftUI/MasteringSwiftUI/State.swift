//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 02/12/22
// Using Swift 5.0 on MacOS 12.4
// 

/*
 @State variables are watched by the view for any change and view is updated accordingly.
 
 For example:
 @State var
 */

import SwiftUI

struct StateUse: View {
    
    @State var backgroundColor: Color = Color.red
    @State var lastBackgroundColor: String = "Red Background"
    @State var counter: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text(lastBackgroundColor)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Background Color Changed: \(counter)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 20) {
                    Button("Green Background") {
                        backgroundColor = .green
                        lastBackgroundColor = "Green Background"
                        counter += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.headline)

                    Button("Red Background") {
                        backgroundColor = .red
                        lastBackgroundColor = "Red Background"
                        counter += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.headline)
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct State_Previews: PreviewProvider {
    static var previews: some View {
        StateUse()
    }
}
