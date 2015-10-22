//
//  LanguageSwitchViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/20.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class LanguageSwitchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var language1Label: UILabel!
    @IBOutlet weak var language2Label: UILabel!
    @IBOutlet weak var language1Btn: UIButton!
    @IBOutlet weak var language2Btn: UIButton!
    @IBOutlet weak var languageGoBtn: UIButton!

    @IBAction func language1Btn(sender: UIButton) {
        
    }
    
    @IBAction func language2Btn(sender: UIButton) {
        
    }
    
    @IBAction func languageGoBtn(sender: UIButton) {
        
        performSegueWithIdentifier("languageSwitchToSettings", sender: self)
        
    }
    
    @IBOutlet weak var language1TableView: UITableView!
    @IBOutlet weak var language2TableView: UITableView!
    
    //initialize DataFetching
    let languagesList = DataFetching().languagesList()
    
    //language setting
    var language1Setting = String! ()
    var language2Setting = String! ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.language1TableView.dataSource = self
        self.language1TableView.delegate = self
        
        self.language2TableView.dataSource = self
        self.language2TableView.delegate = self
        
        language1Setting = "English"
        language2Setting = "English"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(tableView == self.language1TableView) {
            
            return self.languagesList.count
        }
        else {
           return self.languagesList.count
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        if(tableView == self.language1TableView) {
            
            return 1
        }
        
        else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(tableView == self.language1TableView) {
            
            let cell1 = tableView.dequeueReusableCellWithIdentifier("language1Cell", forIndexPath: indexPath)
            
            cell1.textLabel?.text = self.languagesList[indexPath.row]
            return cell1
        }
        
        else  {
            
            let cell2 = tableView.dequeueReusableCellWithIdentifier("language2Cell", forIndexPath: indexPath)
            
            cell2.textLabel?.text = self.languagesList[indexPath.row]
            return cell2
        }
        
    }
    
    //select cell change background and change setting for next segue
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(tableView == self.language1TableView) {
            
            let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
            selectedCell.contentView.backgroundColor = UIColor.greenColor()
            
            //change language setting
            self.language1Setting = self.languagesList[indexPath.row]
            print(language1Setting)
        }
            
        else {
            
            let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
            selectedCell.contentView.backgroundColor = UIColor.blueColor()
            
            //change language setting
            self.language2Setting = self.languagesList[indexPath.row]
            print(language2Setting)
        }

    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let settingVC: SettingsViewController = segue.destinationViewController as! SettingsViewController
        
        settingVC.language1Setting = language1Setting
        settingVC.language2Setting = language2Setting
        
    }
    

}
