//
//  CompanyService.swift
//  societeProject
//
//  Created by Lamia Jrad on 13/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class CompanyService : NSObject{
    
    class func getCompanies() -> [Company]{
        
        let bnp = Company(name: "BNP", image: "BNP_Paribas", companyDescription: "La BNP est une entreprise qu'on n'a pas consulté pour le pret", color: UIColor.greenColor());
        
        let lcl = Company(name: "LCL", image: "lcl", companyDescription: "LCL est ma banque et c'est la ba,que ideale parce que c'est ma banque, elle nous a donné un pret en plus", color: UIColor.blueColor());
        
        let socgen = Company(name: "Société Générale", image: "socgen", companyDescription: "Société Générale oh la banque des vis ça ne sert à rien pas de pret ni rien de tout, c'est la baque de mon mari cheri", color: UIColor.blueColor());
        
        return [bnp, lcl, socgen];
        
    }
    
}