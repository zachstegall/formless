//
//  CitySearchView.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class CitySearchView: UIView {
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    
    
    
    var searchView: SearchView?
    var tableView: TableView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        var vOriginY = UIApplication.sharedApplication().statusBarFrame.size.height
        var vWidth = frame.size.width
        var vHeight = frame.size.height
        
        
        // Search View
        var svHeight: CGFloat = 50.0
        var svRect = CGRectMake(0, vOriginY, vWidth, svHeight)
        searchView = SearchView(frame: svRect, textContainer: nil)
        vOriginY += svHeight
        self.addSubview(searchView!)
        
        
        // Table View
        var tvHeight: CGFloat = vHeight - vOriginY
        var tvRect = CGRectMake(0, vOriginY, vWidth, tvHeight)
        tableView = TableView(frame: tvRect, style: UITableViewStyle.Grouped)
        self.addSubview(tableView!)
    }

}
