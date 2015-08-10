//
//  CityViewController.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    
    var citySearchView: CitySearchView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        citySearchView = CitySearchView(frame: UIScreen.mainScreen().bounds)
        self.view = citySearchView!
    }

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

}
