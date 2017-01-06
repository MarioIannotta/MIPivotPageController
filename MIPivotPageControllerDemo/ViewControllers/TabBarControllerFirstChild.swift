//
//  ViewControllerC1.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class TabBarControllerFirstChild: MIPivotPage {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBlueColor = UIColor(red: 34/255.0, green: 167/255.0, blue: 240/255.0, alpha: 1)
        
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = myBlueColor
        navigationController?.navigationBar.tintColor = UIColor.white

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        tabBarController?.tabBar.isHidden = false
        
        pivotPageController.menuView.clipsToBounds = false
        
    }

}
