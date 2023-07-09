//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 03/12/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct AppStorageDemo: View {
    @State var name: String = ""
    @State var phone: String = ""
    
    @AppStorage("name") var userName: String?
    @AppStorage("phone") var phoneNumber: String?
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Text("AppStorage")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .padding(.bottom, 40)
                
                VStack {
                    if let userName = userName {
                        Text(userName)
                    }
                    if let phoneNumber = phoneNumber {
                        Text(phoneNumber)
                    }
                }
                
                HStack {
                    Text("Name: ")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    TextField("name", text: $name)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                HStack {
                    Text("Phone")
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    TextField("phone", text: $phone)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                
                Button {
                    userName = name
                    phoneNumber = phone
                } label: {
                    Text("Save")
                        .font(.system(size: 30, weight: .heavy, design: .monospaced))
                        .foregroundColor(.black)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageDemo()
    }
}
