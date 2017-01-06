//
//  NavigationControllerDetail.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class NavigationControllerDetail: MIPivotPage {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        pivotPageController.menuView.clipsToBounds = true
        
    }
    
    override func shouldShowPivotMenu() -> Bool { return false }
    override func pivotPageShouldHandleNavigation() -> Bool { return false }
    
}
