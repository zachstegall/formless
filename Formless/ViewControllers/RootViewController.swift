//
//  RootViewController.swift
//  Formless
//
//  Created by Zachary Stegall on 8/9/15.
//  Copyright (c) 2015 Zachary Stegall. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    var cityVC: CityViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        cityVC = CityViewController()
        self.presentViewController(cityVC!, animated: false, completion: nil)
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
