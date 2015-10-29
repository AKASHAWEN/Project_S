//
//  mainViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/20.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AVSpeechSynthesizerDelegate, UIPopoverPresentationControllerDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var languageSettingBtn: UIButton!
    @IBOutlet weak var boySettingBtn: UIButton!
    @IBOutlet weak var girlSettingBtn: UIButton!
    @IBOutlet weak var situationSettingBtn: UIButton!
    
    @IBAction func languageSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("mainLanguagesSetting", sender: self)
    }
    @IBAction func boySettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("mainBoySetting", sender: self)
    }
    @IBAction func girlSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("mainGirlSetting", sender: self)
    }
    @IBAction func situationSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("mainSituationSetting", sender: self)
    }
    
    //declare all the settings, and get the realvalue from segue
    var language1Setting = String()
    var language2Setting = String()
    
    var boySetting = String()
    var girlSetting = String()
    
    var situationSetting = String()
    
    //initiate fetch functions
    let results = DataFetching().fetchDataIntoApp()
    
    //initiate voice functions
    let voice = VoiceControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.results.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell3", forIndexPath: indexPath)
        
        cell.textLabel?.text = self.results[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.greenColor()
        
        voice.speakOut(self.results[indexPath.row])
        
    }

    func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didFinishSpeechUtterance utterance: AVSpeechUtterance) {
        
        print("done speaking")
        
    }
    
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer, didStartSpeechUtterance utterance: AVSpeechUtterance) {
        
        print("starting speech")
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "mainLanguagesSetting" {
            
            let vc = segue.destinationViewController as! MainSettingTableViewController
            
            
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "mainBoySetting" {
            
            let vc = segue.destinationViewController as! MainSettingTableViewController
            
            
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "mainGirlSetting" {
            
            let vc = segue.destinationViewController as! MainSettingTableViewController
            
            
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "mainSituationSetting" {
            
            let vc = segue.destinationViewController as! MainSettingTableViewController
            
            
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        }
        
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }

}
