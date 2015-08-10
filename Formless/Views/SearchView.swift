//
//  SearchView.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class SearchView: UITextView {
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        self.text = "Search by city"
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
