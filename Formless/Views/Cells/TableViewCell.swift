//
//  TableViewCell.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
    
    
    
    var title: UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        var padding: CGFloat = 10.0
        var widthFraction: CGFloat = 0.7
        var rect = CGRectMake(padding, 0, (frame.width * widthFraction), frame.size.height)
        title = UILabel(frame: rect)
        self.addSubview(title!)
    }

}
