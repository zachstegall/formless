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
    
    
    
    var searchView: SearchView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        searchView = SearchView(frame: CGRectMake(0, UIApplication.sharedApplication().statusBarFrame.size.height, frame.size.width, 70.0), textContainer: nil)
        self.addSubview(searchView!)
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
