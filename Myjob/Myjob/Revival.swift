//
//  Relance.swift
//  Myjob
//
//  Created by Lamia Jrad on 23/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class Feedback : NSObject{
    
    var ficheOffre:Bool?
    var noteInterview: Float?
    var noteDiversity:Float?
    var noteHandicap:Float?
    var offers:String?
    var feedbackComment:String?
    
    
    
    init(dictionary : NSDictionary) {
        super.init();
        
        self.ficheOffre = dictionary.objectForKey("ficheOffre") as? Bool;
        self.noteInterview = dictionary.objectForKey("noteInterview") as? Float;
        self.noteDiversity = dictionary.objectForKey("noteDiversity") as? Float;
        
        
    }
}
