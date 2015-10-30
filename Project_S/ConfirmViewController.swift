//
//  ViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/20.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    override func viewDidLoad() {
        //check whether is this the first time user open the app
        let notFirstLaunch = NSUserDefaults.standardUserDefaults().boolForKey("FirstLaunch")
        if notFirstLaunch  {
            print("Not first launch.")
        }
        else {
            print("First launch, load data into core data")
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "FirstLaunch")
            
            let dataLoading = DataLoad()
            dataLoading.loadDataIntoApp()
            
        }
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

