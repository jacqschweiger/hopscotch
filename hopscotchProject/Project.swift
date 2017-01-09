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
    
    var id: Int
    var title: String
    var author: String
    var imageURL: String
    var heartsCount: Int
    var createdAt: String
    var updatedAt: String
    

    convenience init(title:String, author:String, imageURL:String) {
        self.init(id:0, title: title, author:author, imageURL:imageURL, heartsCount:0, createdAt:"", updatedAt:"")
    }

    init(id: Int, title: String, author: String, imageURL: String, heartsCount: Int, createdAt: String, updatedAt: String){
        self.title = title
        self.author = author
        self.imageURL = imageURL
        self.id = id
        self.heartsCount = heartsCount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
    
    init?(dictionary: [String: Any]) {

        guard let title = dictionary["title"] as? String else { return nil }
        guard let author = dictionary["author"] as? String else { return nil }
        guard let imageURL = dictionary["screenshot_url"] as? String else { return nil }
    
        self.title = title
        self.author = author
        self.imageURL = imageURL
        self.id = dictionary["id"] as? Int ?? 0
        self.heartsCount = dictionary["hearts_count"] as? Int ?? 0
        self.createdAt = dictionary["created_at"] as? String ?? ""
        self.updatedAt = dictionary["updated_at"] as? String ?? ""
    }
    
}
