//
//  MainSettingTableViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/27.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class MainSettingTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview.dataSource = self
        self.tableview.delegate = self
    }
    
    //declare an array and parameters to accept info from segues
    var lists = [String]()
    
    var language1Setting = String()
    var language2Setting = String()
    
    var boySetting = String()
    var girlSetting = String()
    
    var situationSetting = String()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lists.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath)
        
        cell.textLabel!.text = self.lists[indexPath.row]

        return cell
    }
    






}
