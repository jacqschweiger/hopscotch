//
//  Project.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit


class Project {
    
    var heartsCount: Int
    var title: String
    var imageURL: String

    
    init(dictionary: [String: Any]) {
        self.heartsCount = dictionary["hearts_count"] as! Int
        self.title = dictionary["title"] as! String
        self.imageURL = dictionary["screenshot_url"] as! String
    }
    
    
    
    /*
     "id": 81,
     "title": "Turkey Day ",
     "author": "_Dancing_Cupcake_",
     "hearts_count": 3,
     "screenshot_url": "http://screenshots.gethopscotch.com/production/nw0lbjn.png",
     "created_at": "2015-01-12T21:57:47.856Z",
     "updated_at": "2016-12-16T20:37:58.676Z"
     */
    
}
