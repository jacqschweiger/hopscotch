//
//  Project.swift
//  Hopscotch-iOS-Test
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Samantha John. All rights reserved.
//

import Foundation
import UIKit

class Project {
    
    var title: String
    var author: String
    var imageURL: String

    
    init(title: String, author: String, imageURL: String){
        self.title = title
        self.author = author
        self.imageURL = imageURL
    }
    
    init?(dictionary: [String: Any]) {

        guard let title = dictionary["title"] as? String else { return nil }
        guard let author = dictionary["author"] as? String else { return nil }
        guard let imageURL = dictionary["screenshot_url"] as? String else { return nil }
    
        self.title = title
        self.author = author
        self.imageURL = imageURL
        
    }
    
}
