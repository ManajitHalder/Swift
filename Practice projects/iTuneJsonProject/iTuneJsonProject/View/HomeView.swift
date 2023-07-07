//
// Created by Manajit Halder
// For Project iTuneJsonProject on 28/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.results, id: \.trackId) {
                        let viewModel = SearchResultVM(model: $0)
                        SearchResultRow(resultVM: viewModel)
                    }
                }
                .listStyle(.insetGrouped)
                
                // Search TextField
                HStack {
                    TextField("Search Text", text: $viewModel.searchText)
                        .textFieldStyle(.roundedBorder)

                    if viewModel.isSearchEnabled {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundColor(.green)
                    } else {
                        Image(systemName: "x.circle.fill")
                            .foregroundColor(.red)
                    }
                }
                .padding()
                
                // Search Button
                Button {
                    viewModel.performSearch()
                } label: {
                    Text("Search Music")
                        .frame(width: 300, height: 30)
                }
                .buttonStyle(.bordered)
                .disabled(!viewModel.isSearchEnabled)
            }
            .padding(.all)
            .navigationTitle("iTunes Music Search")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
