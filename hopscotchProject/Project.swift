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
    
    var title: String
    var author: String
    var imageURL: String


    //Use [String:Any] to allow for later additions of different property types
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as! String
        self.author = dictionary["author"] as! String
        self.imageURL = dictionary["screenshot_url"] as! String
    }
    
}
