//
//  VoiceControl.swift
//  Project_S
//
//  Created by Yuchao Chen on 15/10/23.
//  Copyright © 2015年 Yuchao Chen. All rights reserved.
//

import Foundation
import AVFoundation

class VoiceControl {
    
    func speakOut(toBeSpoke: String){
        
        let mySpeechSynthesizer:AVSpeechSynthesizer = AVSpeechSynthesizer()
        let myString:String = toBeSpoke
        let mySpeechUtterance:AVSpeechUtterance = AVSpeechUtterance(string:myString)
        
        mySpeechUtterance.rate = 0.45
        
        mySpeechSynthesizer .speakUtterance(mySpeechUtterance)
    }
}
