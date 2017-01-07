//
//  DataStore.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation

class DataStore {
    
    static let sharedInstance = DataStore()
    
    private init() {}
    
    var projects: [Project]!
    
    func getProjectsFromAPI(completion: @escaping ()->()) {
        
        projects = []
        
        APIClient.getProjects { (JSON) in
            for project in JSON {
                let newProject = Project(dictionary: project)
                self.projects.append(newProject)
                print(newProject.title)
            }
            
        completion()
            
        }
    }
    
    
    
}
