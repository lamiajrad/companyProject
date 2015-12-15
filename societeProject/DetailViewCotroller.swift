//
//  DetailViewCotroller.swift
//  societeProject
//
//  Created by Lamia Jrad on 12/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var societelabel:UILabel?
    var company : Company?
    
    @IBOutlet var societedescription:UILabel?
    var SocDescription : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.societelabel!.text = company?.name
        self.societelabel?.textColor = company?.color;
        self.societedescription!.text = company?.companyDescription;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

