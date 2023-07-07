//
// Created by Manajit Halder
// For Project iTuneJsonProject on 29/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

struct SearchResultVM {
    let model: SearchResult
    
    var trackName: String {
        model.trackName ?? ""
    }
    
    var imageURL: URL {
        URL(string: model.artworkUrl100 ?? "")!
    }
    
    var fullPrice: String {
        guard let gPrice = model.trackPrice, let gCurrency = model.currency else {
            return "N/A"
        }
        return gPrice.formatted(.currency(code: gCurrency))
    }
}
