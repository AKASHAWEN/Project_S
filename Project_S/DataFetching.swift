//
//  DataFetching.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/22.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataFetching{
    
    func languagesList() ->[String] {
        
        var list = [String]()
        
        list.append("English")
        list.append("Spanish")
        list.append("Korean")
        list.append("Hindi")
        
        return list
    }
    
    
    func fetchDataIntoApp() ->[String]{
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //init a context for munipulate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        //init request
        let request = NSFetchRequest(entityName: "Languages")
        request.returnsObjectsAsFaults = false
        
        //create a variable to hold results
        let results = try! context.executeFetchRequest(request)
        
        var lists = [String]()
        
        if results.count > 0 {
            
            for result: AnyObject in results {
                
                if let item = result.valueForKey("english_general") as? String {
                        lists.append(item)
                }
            }
        }
        
        
        return lists
        //for furture filter use
//        //init nspredicate to filter
//        request.predicate = NSPredicate(format: " == %@", "")
    }
}