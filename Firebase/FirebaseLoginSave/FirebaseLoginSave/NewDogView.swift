//
// Created by Manajit Halder
// For Project FirebaseLoginSave on 14/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack {
            TextField("Dog name", text: $newDog)
            
            Button(action: {
                dataManager.addDog(withName: newDog)
            }, label: {
                Text("Save")
            })
        }
        .padding()
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
