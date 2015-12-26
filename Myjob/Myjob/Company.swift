//
//  Enterprise.swift
//  Myjob
//
//  Created by Lamia Jrad on 23/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class Enterprise : NSObject{
    
    var name:String?
    var image:String?
    var companyDescription:String?
    var location:String?
    var sector:String?
    var diversity:Float?
    var handicap:Float?
    var companyOffers:Float?
    var diversitydescription:String?
    var handicapdescription:String?
    var offersdescription:String?
    var note: Float?
    
    
    init(dictionary : NSDictionary) {
        super.init();
        
        self.name = dictionary.objectForKey("name") as? String;
        self.image = dictionary.objectForKey("image") as? String;
        self.companyDescription = dictionary.objectForKey("companyDescription") as? String;
        
        
}
}
