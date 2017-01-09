//
//  Constants.swift
//  hopscotchProject
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    //HOPSCOTCH URL
    
    static let hopscotchURLString = "https://hopscotch-ios-test.herokuapp.com/projects"
    

    //FONTS
    
    enum font: String {
        case authorFont = "Avenir-Book"
        case titleFont = "Avenir-Black"
    }
    
    enum fontSize: CGFloat {
        case fontSize = 18
    }
    
    
    //LAYOUT
    
    enum gridLayout: CGFloat {
        case HSInterCardHorizontalSpacing = 30
        case HSInterCardVerticalSpacing = 57
        case HSGridTopMargin = 60
        case HSGridSideMargin = 63
    }
    
    enum cardSizes: CGFloat {
        case HSCardWidth = 276
        case HSCardHeight = 267
    }
    
    enum image: CGFloat {
        case HSImageWidth = 276
        case HSImageHeight = 207
        case HSImageCornerRadius = 10
        case HSImageBorderWidth = 2
    }
}


    //COLOR

extension UIColor {
    enum ColorName: UInt32 {
        case titleColor = 0x4d4d4dff
        case authorColor = 0x9b9b9bff
        case imageBorderColor = 0xe4e4e4ff
    }
}

extension UIColor {
    convenience init(named name: ColorName) {
        let rgbaValue = name.rawValue
        let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
        let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
 
