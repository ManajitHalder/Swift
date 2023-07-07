//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import SwiftUI

struct ContentView: View {
    @ObservedObject var movieList = MovieManager()
                           
    var body: some View {
        
        ZStack {
            Color("background")
                .ignoresSafeArea(.all)
            
            FilmFestLabel(movieList: movieList)
                .padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movieList: MovieManager())
    }
}
