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
    
    var store: DataStore!
    
    override func setUp() {
        super.setUp()
        store = DataStore.sharedInstance
        
    }
    
    func testProjectModel() {
        //test init - right things and wrong thing make sure it breaks
    }
    
    func testGetAllProjects() {
        store.projects = []
        store.getProjectsFromAPI {
            
            
            // Test that there are projects
            XCTAssert(self.store.projects.count > 0)
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        store = nil
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
   
    
}
