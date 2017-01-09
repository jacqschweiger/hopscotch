//
//  HopscotchDataStore.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation

class HopscotchDataStore {
    //create single instance for use if hopscotchProject scaled up/expanded
    
    static let sharedInstance = HopscotchDataStore()
    private init() {}
    
    var projects: [Project]!
    
    func getProjectsFromAPI(completion: @escaping ()->()) {
        
        projects = []
        
        HopscotchAPIClient.getProjects { (results) in
            for project in results {
                if let newProject = Project(dictionary: project) {
                    self.projects.append(newProject)
                }
            }
            
            completion()
           let testProject = Project(title: "test", author: "test", imageURL: "http://cf.ltkcdn.net/dogs/images/slide/185065-849x565-beagle-puppy-on-the-beach.jpg")
            self.projects.append(testProject)
        }
    }
}
