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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
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
