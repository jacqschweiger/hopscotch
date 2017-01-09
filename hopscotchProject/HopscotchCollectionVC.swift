//
//  HopscotchCollectionViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Schweiger on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class HopscotchCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var store = HopscotchDataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getProjectsFromAPI {
            
            DispatchQueue.main.async {
                self.collectionView?.reloadData()
            }
        }
    }
}

//MARK:- CollectionView Delegate and DataSource
extension HopscotchCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return store.projects.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: "basicCell", for: indexPath) as! HopscotchCollectionViewCell
        
        cell.titleLabel.text = store.projects[indexPath.item].title
        cell.authorLabel.text = "by \(store.projects[indexPath.item].author)"
       
        
        if let url = URL(string: store.projects[indexPath.item].imageURL) {
            cell.imageView.sd_setImage(with: url, placeholderImage: UIImage(named: "hopscotch-logo")!)
        }
        
        return cell
    }
}

//MARK:- CollectionViewLayout
extension HopscotchCollectionViewController {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let verticalSpacing = Constants.gridLayout.HSInterCardVerticalSpacing.rawValue
        return verticalSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        let horizontalSpacing = Constants.gridLayout.HSInterCardHorizontalSpacing.rawValue
        return horizontalSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let sectionInsets = UIEdgeInsets(top: Constants.gridLayout.HSGridTopMargin.rawValue, left: Constants.gridLayout.HSGridSideMargin.rawValue, bottom: Constants.gridLayout.HSGridTopMargin.rawValue, right: Constants.gridLayout.HSGridSideMargin.rawValue)
        
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cardWidth = Constants.cardSizes.HSCardWidth.rawValue
        let cardHeight = Constants.cardSizes.HSCardHeight.rawValue
        let cardSize = CGSize(width: cardWidth, height: cardHeight)
        
        return cardSize
    }
}
