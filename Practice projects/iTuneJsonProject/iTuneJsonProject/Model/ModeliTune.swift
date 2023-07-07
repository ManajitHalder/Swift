//
// Created by Manajit Halder
// For Project iTuneJsonProject on 28/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

// iTune JSON search result
struct SearchResponse: Codable {
    let resultCount: Int?
    let results: [SearchResult]?
}

struct SearchResult: Codable {
    var kind: String?
    var trackId: Int?
    var artistName: String?
    var collectionName: String?
    var trackName: String?
    var artworkUrl100: String?
    var trackPrice: Double?
    var country: String?
    var currency: String?
}

#if DEBUG

//MARK: - Example item
extension SearchResult {
    
    static var example: SearchResult {
        SearchResult(kind: "song",
                     trackId: 120954025,
                     artistName: "Jack Johnson",
                     collectionName: "Sing-a-Longs and Lullabies for the Film Curious George",
                     trackName: "Upside Down",
                     artworkUrl100: "http://a1.itunes.apple.com/r10/Music/3b/6a/33/mzi.qzdqwsel.100x100-75.jpg",
                     trackPrice: 0.99,
                     country: "USA",
                     currency: "USD"
        )
    }
}
#endif
