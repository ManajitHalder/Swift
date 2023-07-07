//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 01/12/22
// Using Swift 5.0 on MacOS 12.4
// 

/*
 As part of understanding SwiftUI basics.
 
 Explaining how to use SwiftUI Text, modifiers to use with Text view.
 
 Few important modifiers:
 // Gap between 2 lines
    .baselineOffset(20)
 
 // Adding a custom font with size
    .font(.custom("Cochin", size: 40))
 
 // Adding an underline to text with color
    .underline(true, color: .teal)
 
 // Adding a strike through with a color
    .strikethrough(true, color: .red)
 
 // Adding a gap between letters
    .kerning(2)
 
 // To add a minimum scale factor in cases the text can't be displayed completely, may be inside a frame, texts ends with ...
    .minimumScaleFactor(0.3)

 // To add rotation effect to the text:
    .rotationEffect(Angle(degrees: 9.8))
 
 // To add shadow to the text with color and
    .shadow(color: .blue, radius: 5, x: 10, y: 10)
 */

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Explaining how to use SwiftUI Text. The modifiers to use with Text view. As part of understanding SwiftUI basics.")
//            .font(.body)
//            .fontWeight(.medium)
            .bold()
//            .italic()
//            .underline(true, color: .teal)
//            .strikethrough(true, color: .red)
            .font(.custom("Cochin", size: 40))
//            .font(.system(size: 40, weight: .medium, design: .monospaced))
            .baselineOffset(10) // Gap between 2 lines
            .kerning(2)
            .multilineTextAlignment(.center)
            .foregroundColor(.orange)
//            .background(.brown)
            .frame(width: 300, height: 500, alignment: .center)
            .minimumScaleFactor(0.3)
//            .rotationEffect(Angle(degrees: 20))
//            .rotation3DEffect(Angle(radians: 90), axis: (x: -10, y: -19, z: 10))
            .shadow(color: .blue, radius: 5, x: 10, y: 10)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
