//
// Created by Manajit Halder
// For Project iTuneJsonProject on 29/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

class HomeViewModel: ObservableObject {
    @Published var results = [SearchResult]()
    @Published var isSearchEnabled = false
    
    @Published var searchText: String = "" {
        didSet {
            isSearchEnabled = (searchText.count > 2)
        }
    }
    
    func performSearch() {
        let search = searchText.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        print(search)
        
        guard let url = URL(string: "https://itunes.apple.com/search?term=\(search)") else {
            return
        }
        
        Task {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let response = try JSONDecoder().decode(SearchResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.results = response.results ?? []
                }
            } catch {
                print("*** ERROR ***")
            }
        }
    }
}
