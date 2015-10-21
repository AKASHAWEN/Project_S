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
        
    }
    
    @IBOutlet weak var language1TableView: UITableView!
    @IBOutlet weak var language2TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.language1TableView.dataSource = self
        self.language1TableView.delegate = self
        
        self.language2TableView.dataSource = self
        self.language2TableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(tableView == self.language1TableView) {
            
            return 4
        }
            
        else if(tableView == self.language2TableView) {
            
            return 4
        }
        
        else {
           return 4
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        if(tableView == self.language1TableView) {
            
            return 1
        }
            
        else if(tableView == self.language2TableView) {
            
            return 1
        }
        
        else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(tableView == self.language1TableView) {
            
            let cell1 = tableView.dequeueReusableCellWithIdentifier("language1Cell", forIndexPath: indexPath)
            
            cell1.textLabel?.text = "cell1 has to be long long long"
            return cell1
        }
        
        else if(tableView == self.language2TableView) {
            
            let cell2 = tableView.dequeueReusableCellWithIdentifier("language2Cell", forIndexPath: indexPath)
            
            cell2.textLabel?.text = "cell2 has to be long long long"
            return cell2
        }
        
        else {
            
            let cell = UITableViewCell()
            return cell
        }
        
        
    }
    
    //select cell change background and change setting for next segue
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if(tableView == self.language1TableView) {
            
            let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
            selectedCell.contentView.backgroundColor = UIColor.redColor()
        }
            
        else if(tableView == self.language2TableView) {
            
            let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
            selectedCell.contentView.backgroundColor = UIColor.redColor()
        }

        
        
        
//        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
//        selectedCell.contentView.backgroundColor = UIColor.redColor()

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
