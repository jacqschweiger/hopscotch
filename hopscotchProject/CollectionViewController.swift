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
    var cardSize: CGSize!
    var referenceSize: CGSize! = CGSize(width: 60, height: 60)
    var numberOfRows: CGFloat! = 4
    var numberOfColumns: CGFloat! = 3
    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getProjectsFromAPI {
            DispatchQueue.main.async {
               self.collectionView?.reloadData()
            }
        }
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        sectionInsets = UIEdgeInsets(top: Constants.gridLayout.HSGridTopMargin.rawValue, left: Constants.gridLayout.HSGridSideMargin.rawValue, bottom: Constants.gridLayout.HSGridTopMargin.rawValue, right: Constants.gridLayout.HSGridSideMargin.rawValue)
        
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cardWidth = Constants.cardSizes.HSCardWidth.rawValue
        let cardHeight = Constants.cardSizes.HSCardHeight.rawValue
        cardSize = CGSize(width: cardWidth, height: cardHeight)

        return cardSize
    }

}

//cell.textLabel?.font = UIFont(name: Constants.font.titleFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!

//UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.imageBorderColor.rawValue)!)

