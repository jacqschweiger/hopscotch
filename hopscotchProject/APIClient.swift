//
//  APIClient.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation

class APIClient {
    
    class func getProjects(with completion: @escaping ([String : Any])-> Void) {
        
        let urlString = "https://hopscotch-ios-test.herokuapp.com/projects"
        
        let url = URL(string: urlString)
        
        if let unwrappedURL = url {
            
            let session = URLSession.shared
            
            let task = session.dataTask(with: unwrappedURL) { (data, response, error) in
                
                if let unwrappedData = data {
                    
                    do {
                        
                        let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! [String: [String:Any]]
                        guard let projectsArray = responseJSON["projects"] else { return }
                        
                        completion(projectsArray)
                        
                    } catch {
                        
                        print(error)
                    }
                }
                
            }
            
            task.resume()
        }
    }
    
    
    
}
