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
    
    @IBAction func test(sender: UIButton) {
        self.performSegueWithIdentifier("showBoySetting", sender: self)
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
            let pop = vc.popoverPresentationController
            
            if pop != nil {
                pop?.delegate = self
            }
            
            
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    

}
