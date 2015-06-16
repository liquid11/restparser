//
//  ViewController.swift
//  restparser
//
//  Created by Tezro Solutions on 15/06/2015.
//  Copyright (c) 2015 Tezro Solutions. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 5
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        var photocell = photos[indexPath.row]
        
        cell.textLabel?.text = photocell.name
        
        return cell
    }
    
    
      override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var secondViewController  = segue.destinationViewController as DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow(){
            
            let selectedPhoto = photos[indexPath.row]
            secondViewController.currentPhoto = selectedPhoto
            
        }
        
    }
    
    
    
    
    
}

