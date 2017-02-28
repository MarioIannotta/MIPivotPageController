//
//  NavigationController.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension NavigationController: MIPivotRootPage {
    
    var badgeValueForPivotPage: String? {
        return "21"
    }
    
    var shouldHideBadgeOnPageFocus: Bool {
        return true
    }
    
    var imageForPivotPage: UIImage? {
        return UIImage(named: "iconA")
    }
    
}
