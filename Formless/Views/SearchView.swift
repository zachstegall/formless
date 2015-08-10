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
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    // Drawing code
    }
    */
    
    
    
    
    
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        self.text = "Search by city"
        self.font = UIFont(name: "Avenir", size: CGFloat(20.0))
        self.updateContentOffset()
    }
    
    func updateContentOffset() {
        var topoffset: CGFloat = (self.bounds.size.height - self.contentSize.height * self.zoomScale)/2.0
        topoffset = ( topoffset < 0.0 ? 0.0 : topoffset )
        self.contentOffset = CGPointMake(0, -topoffset)
    }

}
