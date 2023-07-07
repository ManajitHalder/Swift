//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import Foundation

class MovieManager: ObservableObject {
    
    init() {
        addMovies()
        checkOfMovies()
    }
    
    var moviesToSeeCount: Int {
        return moviesToSeeList.count
    }
    
    var moviesSeenCount: Int {
        return moviesSeenList.count
    }
    
    @Published var moviesToSeeList = [Movie]()
    @Published var moviesSeenList = [Movie]()
    
    func addMovie(movie: Movie) {
        if !moviesToSeeList.contains(movie) {
            moviesToSeeList.append(movie)
        }
    }
    
    func movieAtIndex(index: Int) -> Movie? {
        if moviesToSeeList.isEmpty {
            return nil
        }
        return moviesToSeeList[index]
    }
    
    func checkOffMovieAt(index: Int) {
        guard index <= moviesToSeeCount else { return }

        let movieToSee = moviesToSeeList.remove(at: index)
        moviesSeenList.append(movieToSee)
    }
    
    func checkedOffMovieAt(index: Int) -> Movie? {
        guard index <= moviesSeenCount else { return nil }
        
        return moviesSeenList[index]
    }
    
    func clearMoviesList() {
        moviesToSeeList.removeAll()
        moviesSeenList.removeAll()
    }
    
    func addMovies() {
        addMovie(movie: Movie(title: "KGF 2", releaseDate: "2022"))
        addMovie(movie: Movie(title: "Kantara", releaseDate: "2022"))
        addMovie(movie: Movie(title: "Drishyam 2", releaseDate: "2022"))
        addMovie(movie: Movie(title: "Singam", releaseDate: "2012"))
        addMovie(movie: Movie(title: "Legend of Bhagat Singh", releaseDate: "2002"))
        addMovie(movie: Movie(title: "Bahubali", releaseDate: "2021"))
        addMovie(movie: Movie(title: "Drishyam 1", releaseDate: "2010"))
        addMovie(movie: Movie(title: "Singam Returns", releaseDate: "2019"))
        addMovie(movie: Movie(title: "Bahubali", releaseDate: "2020"))
        addMovie(movie: Movie(title: "Bahubali 2", releaseDate: "2021"))
    }
    
    func checkOfMovies() {
        checkOffMovieAt(index: 0)
        checkOffMovieAt(index: 1)
        checkOffMovieAt(index: 2)
        checkOffMovieAt(index: 3)
    }
}
