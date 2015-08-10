//
//  CityViewController.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class CityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    
    
    var citySearchView: CitySearchView?

    override func viewDidLoad() {
        super.viewDidLoad()

        citySearchView = CitySearchView(frame: UIScreen.mainScreen().bounds)
        citySearchView?.tableView?.delegate = self
        citySearchView?.tableView?.dataSource = self
        self.view = citySearchView!
    }
    
    
    
    // MARK: - Table View Delegate

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return CGFloat(50.0)
    }
    
    
    
    // MARK: - Table View Data Source
    
    let popularSectionMaxRows = 3
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = TableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        var text = ""
        
        if (indexPath.section == 0) {
            if (indexPath.item == indexPath.length) {
                text = "More"
            } else {
                text = "Popular Locations"
            }
        } else {
            text = "All Locations"
        }
        
        cell.title?.text = text
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return popularSectionMaxRows
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "Popular"
        } else {
            return "All"
        }
    }
}
