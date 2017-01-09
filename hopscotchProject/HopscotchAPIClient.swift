//
//  HopscotchAPIClient.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation

typealias JSON = [String:Any]

class HopscotchAPIClient {
    // Gets Projects from the Hopscotch API
    
    class func getProjects(with completion: @escaping ([JSON])-> Void) {
        
        guard let url = URL(string: "https://hopscotch-ios-test.herokuapp.com/projects") else { print("invalid url"); return }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, response, error) in
            
            if let unwrappedData = data {
                
                do {
                    
                    let responseJSON = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as! JSON
                    let projectsArray = responseJSON["projects"]
                    
                    completion(projectsArray as! [[String : Any]])
                    
                } catch {
                    
                    print(error)
                }
            }
        }
        
        task.resume()
    }
}
