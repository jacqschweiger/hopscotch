//
//  CollectionViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var store = DataStore.sharedInstance
    
    var sectionInsets: UIEdgeInsets!
    var spacing: CGFloat! = 2
    var itemSize: CGSize!
    var referenceSize: CGSize! = CGSize(width: 60, height: 60)
    var numberOfRows: CGFloat! = 4
    var numberOfColumns: CGFloat! = 3
    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    
    var itemWidth: CGFloat!
    var itemHeight: CGFloat!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getProjectsFromAPI {
            DispatchQueue.main.async {
               self.collectionView?.reloadData()
            }
        }
        
        configureLayout()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.projects.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath) as! CollectionViewCell
        
        if let url = URL(string: store.projects[indexPath.item].imageURL) {
            if let data = NSData(contentsOf: url) {
                cell.imageView.image = UIImage(data: data as Data)
            }
        }
        
        return cell

    }
    
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return itemSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return referenceSize
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return referenceSize
    }
    
    func configureLayout(){
        sectionInsets = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        
        itemWidth = (screenWidth/numberOfColumns) - ((spacing * 4) / 3)
        itemHeight = (screenHeight/numberOfRows) - ((spacing * 5) / 4)
        itemSize = CGSize(width: itemWidth, height: itemHeight)
        
        
    }


}

//cell.textLabel?.font = UIFont(name: Constants.font.titleFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!

//UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.imageBorderColor.rawValue)!)

