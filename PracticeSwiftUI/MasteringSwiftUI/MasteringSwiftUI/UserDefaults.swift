//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 03/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct UserDefaultsDemo: View {
    @State var name: String = ""
    @State var mobileNumber: String = ""
    
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            VStack {
                HStack() {
                    Text("Name:")
                        .font(.system(size: 20, weight: .bold, design: .rounded))

                    TextField("Name ", text: $name)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                HStack() {
                    Text("Phone:")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                  
                    TextField("Phone number ", text: $mobileNumber)
                        .textFieldStyle(.roundedBorder)
                }
                
                .padding()
                
                Button("Save") {
                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(mobileNumber, forKey: "phone")
                }
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            }
            .foregroundColor(.black)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            
            .onAppear {
                name = UserDefaults.standard.string(forKey: "name") ?? "Name"
                mobileNumber = UserDefaults.standard.string(forKey: "phone") ?? "Phone number"
            }
        }
    }
}

struct UserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsDemo()
    }
}
