//
// Created by Manajit Halder
// For Project MovieAppTestDriven on 25/11/22
// Using Swift 5.0 on MacOS 12.4
// 

import XCTest
@testable import MovieAppTestDriven

class MovieAppTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit_MovieWithTitle() {
        let testMovie = Movie(title: "Generic Blockbuster")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Generic Blockbuster")
    }

    func testInit_MovieTitleAndReleaseDate() {
        let testMovie = Movie(title: "Adventure", releaseDate: "2001")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "Adventure")
        XCTAssertEqual(testMovie.releaseDate, "2001")
    }
}
