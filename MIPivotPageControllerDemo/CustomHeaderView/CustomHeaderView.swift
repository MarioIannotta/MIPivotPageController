//
//  CustomHeaderView.swift
//  MIPivotPageController
//
//  Created by Mario on 06/01/2017.
//  Copyright © 2017 Mario Iannotta. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    static func get(title: String, subtitle: String) -> CustomHeaderView {
        
        let view = UINib(nibName: "CustomHeaderView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CustomHeaderView
        
        view.titleLabel.text = title
        view.subtitleLabel.text = subtitle
        
        return view
        
    }
    
}
