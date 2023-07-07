//
// Created by Manajit Halder
// For Project iTuneJsonProject on 29/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct SearchResultRow: View {
    let resultVM: SearchResultVM
    
    var body: some View {
        HStack {
            AsyncImage(url: resultVM.imageURL) { image in
                image
                    .resizable()
            } placeholder: {
                Image(systemName: "camera.fill")
            }
            .frame(width: 50, height: 30)
            .lineLimit(2)
            
            Spacer()
            
            VStack {
                Text("Price")
                    .font(.caption2)
                Text(resultVM.fullPrice)
                    .font(.caption2.weight(.heavy))
            }
            .padding()
        }
        .padding()
    }
}

struct SearchResultRow_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultRow(resultVM: SearchResultVM(model: SearchResult.example))
    }
}
