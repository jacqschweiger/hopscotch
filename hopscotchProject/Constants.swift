//
//  Constants.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
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
    
    class func titleColor() -> UIColor {
        return self.colorWithGrayScale(grayScale: 77)
    }
    
    class func authorColor() -> UIColor {
        return self.colorWithGrayScale(grayScale: 155)
    }
    
    class func imageBorderColor() -> UIColor {
        return self.colorWithGrayScale(grayScale: 228)
    }
    
    class func colorWithGrayScale(grayScale: CGFloat) -> UIColor {
        //let newGrayScale = grayScale/255.0
        return UIColor(red: grayScale, green: grayScale, blue: grayScale, alpha: 1)
    }
    
}
 
