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
    var boySetting = [String]()
    var girlSetting = [String]()
    
    var situationSetting = String()
    
    
    
    @IBAction func boySettingBtn(sender: UIButton) {
        self.boySetting.append("boy1")
        self.boySetting.append("boy2")
        self.boySetting.append("boy3")
        self.performSegueWithIdentifier("showBoySetting", sender: self)
    }
    
    @IBAction func girlSettingBtn(sender: UIButton) {
        self.girlSetting.append("girl1")
        self.girlSetting.append("girl2")
        self.girlSetting.append("girl3")
        self.performSegueWithIdentifier("showGirlSetting", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(language1Setting)
        print(language2Setting)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showBoySetting" {
            
            let vc = segue.destinationViewController as! BoySettingCollectionViewController
            //transfer parameters into new viewcontroller
            vc.imageLabels = self.boySetting
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
                //pop?.sourceView = UIButton
                pop?.sourceRect = CGRectMake(10, 10, 10, 10)
            }
        } else if segue.identifier == "showGirlSetting" {
            
            let vc = segue.destinationViewController as! BoySettingCollectionViewController
            vc.imageLabels = self.girlSetting
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
