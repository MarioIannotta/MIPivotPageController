//
//  SingleViewController.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class SingleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension SingleViewController: MIPivotRootPage {
    
    func imageForPivotPage() -> UIImage? {
        return UIImage(named: "iconB")
    }
    
}
