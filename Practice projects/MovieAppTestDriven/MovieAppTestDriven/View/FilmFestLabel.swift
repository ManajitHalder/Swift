//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct FilmFestLabel: View {
    @ObservedObject var movieList: MovieManager
    
    var body: some View {
        VStack {
            Label {
                Text("Film Fest")
                    .font(.custom("cochin", size: 37))
                    .fontWeight(.bold)
                    .italic()
                    .foregroundColor(.black)
            } icon: {
                Image(systemName: "film")
                    .resizable()
                    .symbolVariant(.rectangle)
                    .foregroundColor(.red)
                    .frame(width: 30, height: 30)
            }
            .labelStyle(.titleOnly)
            .padding()

            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 2)
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
                .foregroundColor(.yellow)
            
            Text("Movies To See")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.orange)
            List {
                ForEach(movieList.moviesToSeeList, id: \.self) { movie in
                    HStack(spacing: 30) {
                        if let title = movie.title {
                            Text(title)
                        }
                        if let releaseDate = movie.releaseDate {
                            Text(releaseDate)
                        }
                    }
                    .padding(.bottom, 2)
                }
            }
            .foregroundColor(.purple)
            
            Text("Movies Seen")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.green)
            List {
                ForEach(movieList.moviesSeenList, id: \.self) { movie in
                    HStack(spacing: 30) {
                        if let title = movie.title {
                            Text(title)
                        }
                        if let releaseDate = movie.releaseDate {
                            Text(releaseDate)
                        }
                    }
                    .padding(.bottom, 2)
                }
            }
            .foregroundColor(.green)
        }
    }
}

struct FilmFestLabel_Previews: PreviewProvider {
    static var previews: some View {
        FilmFestLabel(movieList: MovieManager())
    }
}
