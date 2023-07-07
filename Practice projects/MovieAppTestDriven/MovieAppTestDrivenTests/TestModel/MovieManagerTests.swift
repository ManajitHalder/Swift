//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import XCTest
@testable import MovieAppTestDriven

class MovieManagerTests: XCTestCase {
    var sut: MovieManager! // sut (system under test)
    let romanticMovie = Movie(title: "Romantic")
    let familyDrama = Movie(title: "Family Drama")
    let actionAdventure = Movie(title: "Action/Adventure")
    let suspenseThriller = Movie(title: "Suspense Thriller")
    let bengaliArtMovie = Movie(title: "Bengali Art Movie")
    let biography = Movie(title: "Biography")
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = MovieManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK: - Initialization Tests (Initial values)
    func testInit_MoviesToSee_ReturnsZero() {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }

    func testInit_MoviesSeen_ReturnsZero() {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    //MARK: - Add & Query movies
    func testAdd_MoviesToSee_ReturnsOne() {
        sut.addMovie(movie: romanticMovie)
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnsMovieAtIndex() {
        // Test empty movieList return nil before adding new movie to list
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertNil(movieQueried)
        
        // Test confirms movie added
        sut.addMovie(movie: familyDrama)
        let nextMovieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(familyDrama.title, nextMovieQueried?.title)
    }
    
    //MARK: - Checking Off
    func testCheckOffMovie_UpdateCountInMovieManager() {
        sut.addMovie(movie: actionAdventure)
        sut.checkOffMovieAt(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOffMovie_RemovesMovieFromMovieList() {
        sut.addMovie(movie: suspenseThriller)
        sut.addMovie(movie: bengaliArtMovie)
        sut.checkOffMovieAt(index: 0)
        
        XCTAssertEqual(sut.movieAtIndex(index: 0)?.title, bengaliArtMovie.title)
    }
    
    func testCheckOffMovie_ReturnsMovieAtIndex() {
        sut.addMovie(movie: biography)
        sut.checkOffMovieAt(index: 0)
        
        let movieQueried = sut.checkedOffMovieAt(index: 0)
        XCTAssertEqual(biography.title, movieQueried?.title)
    }
    
    //MARK: - Equatable Tests (Checking Movie equality).
    
    func testEquatableMovieTitleOnly_ReturnsTrue() {
        let actionMovie1 = Movie(title: "Action", releaseDate: "2022")
        let actionMovie2 = Movie(title: "Action", releaseDate: "2022")
        
        XCTAssertEqual(actionMovie1, actionMovie2)
    }
    
    func testEquatableMovieTitleOnly_ReturnsNotEqualForDifferentTitles() {
        let actionMovie1 = Movie(title: "Action", releaseDate: "1880")
        let actionMovie2 = Movie(title: "Adventure", releaseDate: "1880")
        
        XCTAssertNotEqual(actionMovie1, actionMovie2)
    }
    
    func testEquatableMovie_ReturnsNotEqualForDifferentReleaseDate() {
        let actionMovie1 = Movie(title: "Action", releaseDate: "1880")
        let actionMovie2 = Movie(title: "Adventure", releaseDate: "1780")
        
        XCTAssertNotEqual(actionMovie1, actionMovie2)
    }
    
    //MARK: - Clearing and Resetting Movie Lists
    func testClearMovies_ReturnsMovieListCountOfZero() {
        sut.addMovie(movie: actionAdventure)
        sut.addMovie(movie: familyDrama)
        sut.checkOffMovieAt(index: 0)
        
        XCTAssertEqual(sut.moviesSeenCount, 1)
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    
        sut.clearMoviesList()
        XCTAssertEqual(sut.moviesSeenCount, 0)
        XCTAssertEqual(sut.moviesToSeeCount, 0)
    }
    
    //MARK: - Test Duplicates
    func testDuplicateMovies_ShouldNotBeAddedToList() {
        sut.addMovie(movie: romanticMovie)
        sut.addMovie(movie: romanticMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
}
