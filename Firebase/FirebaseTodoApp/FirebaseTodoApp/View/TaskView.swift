//
// Created by Manajit Halder
// For Project FirebaseTodoApp on 16/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct TaskView: View {
    @ObservedObject var model = ViewModel()
    
    @State private var name = ""
    @State private var finishBy = Date()
    @State private var budget = 0.0
    @State private var notes = ""
    
    var body: some View {
        
        VStack {
            List (model.list) { item in
                HStack(spacing: 2) {
                    VStack {
                        Text(item.name)
                        Text(item.notes)
                    }
                    .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        model.updateData(updateTask: item)
                    }, label: {
                        Image(systemName: "pencil")
                    })
                        .buttonStyle(.bordered)
                    
                    Button(action: {
                        model.deleteData(item: item)
                    }, label: {
                        Image(systemName: "minus.circle")
                    })
                        .buttonStyle(.bordered)
                }
                .padding()
            }
            
            Divider()
            
            VStack(spacing: 10) {
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                TextField("Finish By", value: $finishBy, format: .dateTime)
                    .textFieldStyle(.roundedBorder)
                TextField("Budget", value: $budget, format: .number)
                    .textFieldStyle(.roundedBorder)
                TextField("Notes", text: $notes)
                    .textFieldStyle(.roundedBorder)
                
                HStack {
                    Button(action: {
                        model.addData(name: name, finishBy: finishBy, budget: budget, notes: notes)
                        name = ""
                        finishBy = Date()
                        budget = 0.0
                        notes = ""
                    }, label: {
                        Text("Add")
                    })
                        .buttonStyle(.borderedProminent)
                        .disabled(name.isEmpty)
                    
                    Spacer()
                    
                    Button(action: {
                        model.getData()
                    }, label: {
                        Text("Refresh")
                    })
                        .buttonStyle(.borderedProminent)
                }
                .padding()
            }
            .padding()
        }
    }
    
    init() {
        model.getData()
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
