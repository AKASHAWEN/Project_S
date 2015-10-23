//
//  mainViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/20.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AVSpeechSynthesizerDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
