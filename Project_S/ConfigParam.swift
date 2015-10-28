//
//  ConfigParam.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/27.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import Foundation

class ConfigParam {
    
    var boySetting = [String]()
    var girlSetting = [String]()
    var situationSetting = [String]()
    
    init(){
        
        self.boySetting.append("boy1")
        self.boySetting.append("boy2")
        self.boySetting.append("boy3")
        
        self.girlSetting.append("girl1")
        self.girlSetting.append("girl2")
        self.girlSetting.append("girl3")
        
        self.situationSetting.append("situation1")
        self.situationSetting.append("situation2")
        self.situationSetting.append("situation3")
        
    }
    
    func returnBoySetting() -> [String] {
        return self.boySetting
    }
    
    func returnGirlSetting() -> [String] {
        return self.girlSetting
    }
    
    func returnSituationSetting() -> [String] {
        return self.situationSetting
    }
}
