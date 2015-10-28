//
//  SettingsViewController.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/20.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    
    //take language parameter from LanguageSwitch Controller
    var language1Setting = String()
    var language2Setting = String()
    
    //decalare other settings in the controller
    var boySetting = String()
    var girlSetting = String()
    
    var situationSetting = String()
    
    //create an instance to get all the configureation parameters
    let configParams = ConfigParam()
    
    @IBAction func boySettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("showBoySetting", sender: self)
    }
    
    @IBAction func girlSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("showGirlSetting", sender: self)
    }
    
    @IBAction func situationSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("showSituationSetting", sender: self)
    }
    
    @IBAction func withSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("withSettingToMain", sender: self)
    }
    
    @IBAction func randomSettingBtn(sender: UIButton) {
        
        self.performSegueWithIdentifier("randomSettingToMain", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(language1Setting)
        print(language2Setting)
       
        //init boy, girl and situation default setting after viewdid loaded
        self.boySetting = self.configParams.returnBoySetting()[0]
        self.girlSetting = self.configParams.returnGirlSetting()[0]
        self.situationSetting = self.configParams.returnSituationSetting()[0]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showBoySetting" {
            
            let vc = segue.destinationViewController as! BoySettingCollectionViewController
            //transfer parameters into new viewcontroller
            vc.imageLabels = self.configParams.returnBoySetting()
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "showGirlSetting" {
            
            let vc = segue.destinationViewController as! BoySettingCollectionViewController
            //transfer parameters into new viewcontroller
            vc.imageLabels = self.configParams.returnGirlSetting()
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "showSituationSetting" {
            
            let vc = segue.destinationViewController as! BoySettingCollectionViewController
            //transfer parameters into new viewcontroller
            vc.imageLabels = self.configParams.returnSituationSetting()
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "withSettingToMain" {
            
            let vc = segue.destinationViewController as! MainViewController
            //pass parameters
            vc.language1Setting = self.language1Setting
            vc.language2Setting = self.language2Setting
            vc.boySetting = self.boySetting
            vc.girlSetting = self.girlSetting
            vc.situationSetting = self.situationSetting
            
        } else if segue.identifier == "randomSettingToMain" {
            
            let vc = segue.destinationViewController as! MainViewController
            //pass parameters
            vc.language1Setting = self.language1Setting
            vc.language2Setting = self.language2Setting
            vc.boySetting = self.boySetting
            vc.girlSetting = self.girlSetting
            vc.situationSetting = self.situationSetting
            
        }
        
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    

}
