//
//  DataLoading.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/21.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class DataLoad {
    
    
    func loadDataIntoApp () {
        
        // init an appleDelegate
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //init a context for munipulate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        //create new user object in files
//        let newSentence = NSEntityDescription.insertNewObjectForEntityForName("Languages", inManagedObjectContext: context)
        
        //create arraies to add all the sentences into it seperately
        var english_general = [String]()
        var korean_general = [String]()
        var hindi_general = [String]()
        var spanish_general = [String]()
        
        //add content into them
        
        english_general.append("Put on a diaper")
        english_general.append("Fuck me wearing a cowboy hat")
        english_general.append("Fuck me wearing a batman Mask")
        english_general.append("Can i Kiss your feet")
        english_general.append("can i suck on your toes")
        english_general.append("put on a leather mask")
        english_general.append("i love porn")
        
        spanish_general.append("ponte un pañal")
        spanish_general.append("follame con un sombrero de cawuboy")
        spanish_general.append("follame con una mascara de batman")
        spanish_general.append("puedo besarte los pies")
        spanish_general.append("puedo chuparte los dedos de los pies")
        spanish_general.append("ponte una mascara de cuero")
        spanish_general.append("me encanta el porno")
        
        hindi_general.append("एक डायपर पहन")
        hindi_general.append("मेरे साथ चरवाहा टोपी पहने सेक्स करना")
        hindi_general.append("मेरे साथ बैटमैन मुखौटा पहने सेक्स करना")
        hindi_general.append("क्या मैं आपके पैर चूम सकता हू")
        hindi_general.append("क्या मैं आपके पैर की उंगलियों पर चूस सकता हू")
        hindi_general.append("एक चमड़े का मुखौटा पहन")
        hindi_general.append("मुझे ब्लू फिल्म से प्यार है")
        
        korean_general.append("옷벗고 기저귀 입어봐")
        korean_general.append("카우보이 모자쓰고 박아줘")
        korean_general.append("베트맨 가면 쓰고 박아줘")
        korean_general.append("너의 발에다 키스하고싶어")
        korean_general.append("너의 발가락을 맛있게 빨아주고싶어")
        korean_general.append("가죽으로 된 가면 한번 써봐봐")
        korean_general.append("야동 좋아해")
        
        for var i=0; i < english_general.count; i++ {
            
            let newSentence = NSEntityDescription.insertNewObjectForEntityForName("Languages", inManagedObjectContext: context)
            
            newSentence.setValue(english_general[i], forKey: "english_general")
            print(english_general[i])
            
            newSentence.setValue(korean_general[i], forKey: "korean_general")
            print(korean_general[i])
            
            newSentence.setValue(hindi_general[i], forKey: "hindi_general")
            print(hindi_general[i])
            
            newSentence.setValue(spanish_general[i], forKey: "spanish_general")
            print(spanish_general[i])
            
            newSentence.setValue(i, forKey: "id")
            print(i)
            
        }
        
        //check whether it is done
        
        print(" data loading, done!")
    }
    
    func favoriteDataLoad(favorite: String){
        
        // init an appleDelegate
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //init a context for munipulate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        let newSentence = NSEntityDescription.insertNewObjectForEntityForName("Languages", inManagedObjectContext: context)
        
        newSentence.setValue(favorite, forKey: "favorite")
        print(favorite)

        
    }
    
}
