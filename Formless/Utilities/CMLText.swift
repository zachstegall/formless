//
//  CMLText.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class CMLText: NSObject {
    
    class func textContainer (size: CGSize) -> NSTextContainer {
        var container: NSTextContainer = NSTextContainer(size: size)
        container.lineBreakMode = NSLineBreakMode.ByCharWrapping
        container.maximumNumberOfLines = 1
        return container
    }
    
    class func layoutManager () -> NSLayoutManager {
        var manager = NSLayoutManager()
        return manager
    }
}
