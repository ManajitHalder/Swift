//
// Created by Manajit Halder
// For Project MasteringSwiftUI on 02/12/22
// Using Swift 5.0 on MacOS 12.4
// 

/*
 Use @EnvironmentObject when you need to pass data from main view to one or more subviews instead of using @ObservedObject or @StateObject.
 
 Below example first shows passing of data from the first view to its containing views using @StateObject and @ObservedObject.
 
 And finally it shows how to use @EnvironmentObject instead of @StateObject and @ObservedObject.
 */

import SwiftUI

// ViewModel
class ProgrammingLanguage: ObservableObject {
    @Published var languageArr = [String]()
    
    init() {
        fetchLanguages()
    }
    
    func fetchLanguages() {
        languageArr.append(contentsOf: ["C Programming",
                                        "C++ Programming",
                                        "Objective C",
                                        "Swift Programming",
                                        "SwiftUI",
                                        "Python",
                                        "Java",
                                        "Bash Shell",
                                        "Rest API",
                                        "Google Cloudbase",
                                        "HTML"
                                       ])
    }
}

// Main View
struct ProgrammingLanguagesView: View {
    @StateObject var viewModel = ProgrammingLanguage()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.languageArr, id: \.self) { lang in
                    

                    NavigationLink {
//                        DetailView(viewModel: viewModel)
                        DetailView(selectedItem: lang)
                    } label: {
                        Text(lang)
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .medium, design: .rounded))
                    }
                }
            }
            .listStyle(.automatic)
            .navigationTitle("Programming Languages")
        }
        .environmentObject(viewModel)
    }
}

// Second View
struct DetailView: View {
    let selectedItem: String
//    @ObservedObject var viewModel: ProgrammingLanguage
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                NavigationLink {
//                    FinalView(viewModel: viewModel)
                    FinalView()
                } label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .background(.white)
                        .cornerRadius(30)
                }
            }
        }
    }
}

// Third View
struct FinalView: View {
//    @ObservedObject var viewModel: ProgrammingLanguage
    @EnvironmentObject var viewModel: ProgrammingLanguage
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.3, green: 0.3, blue: 0.5), Color(red: 4, green: 0.5, blue: 2)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
           
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.languageArr, id: \.self) { lang in
                        Text(lang)
                            .font(.system(size: 30, weight: .semibold, design: .rounded))
                            .cornerRadius(30)
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

struct TopicEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingLanguagesView()
    }
}
