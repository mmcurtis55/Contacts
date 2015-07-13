//
//  TableViewController.swift
//  ContactsTest
//
//  Created by Matthew Curtis on 7/13/15.
//  Copyright (c) 2015 Matthew Curtis. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


        
        var tableData:Array<String> = ["A", "This ", "THAT", "ASDFGHJK"]
        var picData:Array<String>   = ["Icon-Small-50", "Icon-Small-50", "Icon-Small-50", "Icon-Small-50"]
        
        override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return tableData.count
        }
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("ContactCell") as? UITableViewCell
            
            
            if cell == nil{
                cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "ContactCell")
                // Configure the cell...
                cell?.backgroundColor = UIColor.clearColor()
                cell?.textLabel?.textColor = UIColor.darkTextColor()
                
                let selectedCellView:UIView = UIView(frame: CGRectMake(0, 0, cell!.frame.size.width, cell!.frame.size.height))
                
                selectedCellView.backgroundColor = UIColor.darkGrayColor().colorWithAlphaComponent(0.3)
                cell?.selectedBackgroundView = selectedCellView
                
            }
            
            cell?.textLabel?.text = tableData[indexPath.row]
            cell?.detailTextLabel?.text = tableData[indexPath.row]
            cell?.detailTextLabel?.textColor = UIColor.blueColor()
            var icon = UIImage(named: picData[indexPath.row] as String)
            
            cell?.imageView?.image = icon
            cell?.detailTextLabel?.text = "test"
            
            
            return cell!
        }
        
        override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return  45.0
        }
        
        
        override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
            
            let cell  = tableView.cellForRowAtIndexPath(indexPath)
            //delegate?.sideBarControllerDidSelectRow(indexPath)
            
        }
}