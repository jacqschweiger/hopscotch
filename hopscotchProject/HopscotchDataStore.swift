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
        }
    }
    
    //
    func getProjectsByHearts(completion: @escaping ()->()) {
        getAllProjects {
            self.projects.sort { (projectA, projectB) -> Bool in
                projectA.heartsCount > projectB.heartsCount
            }
            completion()
        }
    }
    
    private func getAllProjects(completion: @escaping () -> ()) {
        projects = []
        
        HopscotchAPIClient.getProjects { (results) in
            for project in results {
                if let newProject = Project(dictionary: project) {
                    self.projects.append(newProject)
                }
            }
            completion()
        }

        
    }
}
