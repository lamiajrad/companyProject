//
//  ViewController.swift
//  societeProject
//
//  Created by Lamia Jrad on 12/12/2015.
//  Copyright © 2015 Lamia Jrad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    var selectedIndexPath : NSIndexPath?
    
    var data:[Company]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.data = CompanyService.getCompanies();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       /* if (section == 0){
            return 2;
        }else{
            return 3;
        }
      */
        return 3;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
       /* if (indexPath.section == 0){
            cell.textLabel?.text = "ghazi"
        }else{
        
        }
        */
        /*
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        cell.imageView?.image = UIImage(named:self.arrImageName[indexPath.row])
        
        return cell
        */
        
        let cell:CompanyCustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell") as! CompanyCustomTableViewCell
        
        let company = self.data![indexPath.row];
        cell.initWithCompany(company);
        
        return cell
       
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      
        self.selectedIndexPath = indexPath;
        self.performSegueWithIdentifier("tabViewSegue", sender: self);
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
        if (segue.identifier == "tabViewSegue") {
            
            let svc = segue.destinationViewController as! DetailViewController;
            
            let company = self.data![self.selectedIndexPath!.row];
            svc.company = company;
        }
    }
    
 

 
    
}

