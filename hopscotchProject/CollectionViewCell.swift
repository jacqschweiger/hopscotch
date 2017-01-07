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
        
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commonInit()
        
    }
    
    private func commonInit() {
        
        //IMAGE SET UP
        imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        self.contentView.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
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
        titleLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
        
        //AUTHOR SET UP
        authorLabel = UILabel()
        self.contentView.addSubview(authorLabel)
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        authorLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        
    }
    

}
