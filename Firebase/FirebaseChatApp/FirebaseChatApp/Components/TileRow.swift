//
// Created by Manajit Halder
// For Project FirebaseChatApp on 14/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct TileRow: View {
    var imageURL = URL(fileURLWithPath: "/Users/reyansh/Data/12 Docs/Personal Docs/myPhotos/IMG-20170619-WA0000.jpg")
    var name = "Reyansh Halder"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { (image) in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TileRow_Previews: PreviewProvider {
    static var previews: some View {
        TileRow()
            .background(Color("Peach"))
    }
}
