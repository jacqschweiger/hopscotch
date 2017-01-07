//
//  ViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.store.getProjectsFromAPI {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.projects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        
        cell.textLabel?.text = store.projects[indexPath.row].title
        cell.textLabel?.font = UIFont(name: Constants.font.titleFont.rawValue, size: CGFloat(Constants.fontSize.fontSize.rawValue))!
        cell.backgroundColor = UIColor(named: UIColor.ColorName(rawValue: UIColor.ColorName.imageBorderColor.rawValue)!)
        return cell
        
    }


}

