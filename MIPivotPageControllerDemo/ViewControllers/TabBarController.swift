//
//  TabBarController.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension TabBarController: MIPivotRootPage {
    
    var imageForPivotPage: UIImage? {
        return UIImage(named: "iconC")
    }
    
}
