//
//  CollectionViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var store = DataStore.sharedInstance

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
        
        cell.titleLabel.text = store.projects[indexPath.item].title
        cell.authorLabel.text = "by \(store.projects[indexPath.item].author)"
        
//        if let url = URL(string: store.projects[indexPath.item].imageURL) {
//            if let data = NSData(contentsOf: url) {
//                cell.imageView.image = UIImage(data: data as Data)
//            }
//        }
        
        if let url = URL(string: store.projects[indexPath.item].imageURL) {
            cell.imageView.sd_setImage(with: url)
            }
        
        return cell

    }
    
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

