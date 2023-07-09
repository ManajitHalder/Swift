//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 02/12/22
// Using Swift 5.0 on MacOS 12.4
// 

/*
 Function changeBackgroundColor() called from Button.
 
 Added two functions to get random colors.
 
 
 */

import SwiftUI

struct SubviewsAndFunctions: View {
    @State private var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            background
            
            // content
           content
        }
    }
    
    // background View
    var background: some View {
        backgroundColor
            .ignoresSafeArea()
    }
    
    // content View
    var content: some View {
        VStack(spacing: 20) {
            Text("Random Background Color")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            Button {
//                randomBackgroundRGBColor()
                randomBackgroundColor()
            } label: {
                Text("Change Background")
                    .foregroundColor(.black)
                    .padding()
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .background(.white)
                    .cornerRadius(20)
            }
        }
        
    }
    
    // function
    func randomBackgroundRGBColor() {
        backgroundColor = Color.randomColor
    }
    
    func randomBackgroundColor() {
        let colorList: [Color] = [
            Color.accentColor,
            Color.blue,
            Color.black,
            Color.brown,
            Color.cyan,
            Color.green,
            Color.gray,
            Color.indigo,
            Color.mint,
            Color.orange,
            Color.pink,
            Color.purple,
            Color.red,
            Color.teal,
            Color.yellow
        ]
        
        print(colorList[1])
        
        backgroundColor = colorList[.random(in: 0..<colorList.count)]
    }
}

struct SubviewsAndFunctions_Previews: PreviewProvider {
    static var previews: some View {
        SubviewsAndFunctions()
    }
}

extension Color {
    static var randomColor: Color {
        return Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
