//
//  CustomTableViewCell,.swift
//  societeProject
//
//  Created by Lamia Jrad on 13/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class CompanyCustomTableViewCell : UITableViewCell {
    
    @IBOutlet var labelCell:UILabel?
    @IBOutlet var imageCell:UIImageView?
 
    
    func initWithCompany(company : Company){
        self.imageCell!.image = UIImage(named:company.image!)
        self.labelCell!.text = company.name!;
    }
    
}
