//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 03/12/22
// Using Swift 5.0 on MacOS 12.4
// 

/*
 @State variable is used to update state of a particular variable in the main view (@State variables are relevant to only to the current view, not available to the sub views).
 
 If we want to update the main view varaibles from sub views then we have to use @Binding
 
 Declare a @Binding variable in the sub view to update the @State variable in the main view.
 
 Subview call: ButtonView(background: $backgroundColor)
 
 Binding in sub view: @Binding var background: Color
 
 Here background in child view connects to backgroundColor State variable in main view.
 */

import SwiftUI

struct BindingDemo: View {
    @State private var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Button {
                    backgroundColor = .yellow
                } label: {
                    Text("Main View Button")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.blue)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(.white)
                        .cornerRadius(25)
                }

                ButtonView(background: $backgroundColor)
            }
        }
    }
}

struct Binding_Previews: PreviewProvider {
    static var previews: some View {
        BindingDemo()
    }
}

struct ButtonView: View {
    @Binding var background: Color // To change the backgroundColor in main view
    
    var body: some View {
        Button {
            background = .pink
        } label: {
            Text("Sub View Button")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(.blue)
                .cornerRadius(25)
        }
    }
}
