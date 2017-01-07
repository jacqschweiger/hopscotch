//
//  CollectionViewCell.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/7/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView!
    var authorLabel: UILabel!
    var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpElements()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setUpElements()
        
    }
    
    private func setUpElements() {
        
        //IMAGE SET UP
        imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        self.contentView.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.widthAnchor.constraint(equalToConstant: Constants.image.HSImageWidth.rawValue).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: Constants.image.HSImageHeight.rawValue).isActive = true
        
        imageView.layer.cornerRadius = Constants.image.HSImageCornerRadius.rawValue
        imageView.layer.borderWidth = Constants.image.HSImageBorderWidth.rawValue
        imageView.layer.borderColor = UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.imageBorderColor.rawValue)!).cgColor
        imageView.clipsToBounds = true
        
        
        imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        
        //TITLE SET UP
        titleLabel = UILabel()
        self.contentView.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        
        titleLabel.font = UIFont(name: Constants.font.titleFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!
        
        titleLabel.textColor = UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.titleColor.rawValue)!)
        
        
        //AUTHOR SET UP
        authorLabel = UILabel()
        self.contentView.addSubview(authorLabel)
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        authorLabel.bottomAnchor.constraint(equalTo: self.imageView.topAnchor, constant: -2).isActive = true
        
        authorLabel.font = UIFont(name: Constants.font.authorFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!
        authorLabel.textColor = UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.authorColor.rawValue)!)
        
    }
    

}
