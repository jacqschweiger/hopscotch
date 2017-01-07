//
//  ViewController.swift
//  hopscotchProject
//
//  Created by Jacqueline Minneman on 1/6/17.
//  Copyright © 2017 Jacqueline Schweiger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var store = DataStore.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("loading!")
        
        store.getProjectsFromAPI {
            print("calling api")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

