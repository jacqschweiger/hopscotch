//
//  CollectionViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UICollectionViewController {
    
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
        
        if let url = URL(string: store.projects[indexPath.item].imageURL) {
            if let data = NSData(contentsOf: url) {
                cell.imageView.image = UIImage(data: data as Data)
            }
        }
        
        //cell.imageView.image = store.projects[indexPath.row].heartsCount
        
        return cell

    }


}

//cell.textLabel?.font = UIFont(name: Constants.font.titleFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!

//UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.imageBorderColor.rawValue)!)

