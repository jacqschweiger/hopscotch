//
//  Project.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

// get a reason ? 
// could also be a struct 

class Project {
    
    var title: String
    var author: String
    var imageURL: String


    //Use [String:Any] to allow for later additions of different property types
    //MARK:- make an init with properties as a just in case
    
    
    
    init?(dictionary: [String: Any]) {
        
        
       guard let title = dictionary["title"] as? String, let author = dictionary["author"] as? String, let imageURL = dictionary["screenshot_url"] as? String else { return nil }
//
//        guard let title = dictionary["title"] as? String else { return }
//        guard let author = dictionary["title"] as? String else { return }
//        guard let imageURL = dictionary["title"] as? String else { return }
        //MARK:- do the following for author
        //let author = dictionary["author"] as? String ?? ""
    
        self.title = title
        
        self.title = dictionary["title"] as! String
        self.author = dictionary["author"] as! String
        self.imageURL = dictionary["screenshot_url"] as! String
    }
    
}
