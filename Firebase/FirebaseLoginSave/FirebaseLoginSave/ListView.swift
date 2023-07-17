//
// Created by Manajit Halder
// For Project FirebaseLoginSave on 12/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

// Display Dogs data as a List View
struct ListView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) { dog in
                Text(dog.name)
            }
            .navigationTitle("Dogs")
//            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
            showPopup.toggle()
            }, label: {
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopup, content: {
                NewDogView()
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .environmentObject(DataManager())
    }
}
