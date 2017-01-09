//
//  hopscotchProjectTests.swift
//  hopscotchProjectTests
//
//  Created by Jacqueline Schweiger on 1/8/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import XCTest
@testable import hopscotchProject

class hopscotchProjectTests: XCTestCase {
    
    var store: HopscotchDataStore!
    
    override func setUp() {
        super.setUp()
        store = HopscotchDataStore.sharedInstance
    }
    
    func testProjectModel() {
        //Test failable initalizer
        let dict = ["title":"test title"]
        let project = Project(dictionary: dict)
        XCTAssert(project == nil)
    }
    
    func testGetAllProjects() {
        store.projects = []
        store.getProjectsFromAPI {
            
            // Test that there are projects
            XCTAssert(self.store.projects.count > 0)
            
            // Test that projects contain title, author, and image
            for project in self.store.projects {
                XCTAssert(!project.title.isEmpty)
                XCTAssert(!project.author.isEmpty)
                XCTAssert(!project.imageURL.isEmpty)
            }
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        store = nil
        super.tearDown()
    }
}
