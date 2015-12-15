//
//  File.swift
//  societeProject
//
//  Created by Lamia Jrad on 13/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class Company : NSObject{
    
    var name:String?
    var image:String?
    var companyDescription:String?
    var color:UIColor?
    
    init(name : String, image : String, companyDescription : String, color : UIColor) {
        self.name = name;
        self.image = image;
        self.companyDescription = companyDescription;
        self.color = color;
    }

}