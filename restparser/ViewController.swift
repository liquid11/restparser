//
//  ViewController.swift
//  restparser
//
//  Created by Tezro Solutions on 15/06/2015.
//  Copyright (c) 2015 Tezro Solutions. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

   
    var items = [RestItm]()
 

    
    var photos: [String] = ["Eggs", "Milk"]
    
    @IBOutlet var tblView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var url = "http://jsonplaceholder.typicode.com/posts"
        Alamofire.request(.GET, url, parameters: nil)
            .responseJSON { (req, res, json, error) in
                if(error != nil) {
                    NSLog("Error: \(error)")
                    println(req)
                    println(res)
                }
                else {
                    NSLog("Success: \(url)")
                    var json = JSON(json!)
                    
                    if let data : Dictionary<String, JSON> = json[].dictionaryValue as Dictionary? {
                    for (key: String, subJson: JSON) in data {
                
                       
                            println(subJson)
                        

                    
                        }
                    }
                }
        }    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 2
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        
        
        cell.textLabel?.text = photos[indexPath.row]
        
        return cell
    }
    
    
    
    
}

