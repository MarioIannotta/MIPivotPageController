//
//  CustomTitleAndSubtitleView.swift
//  MIPivotPageController
//
//  Created by Mario on 06/01/2017.
//  Copyright © 2017 Mario Iannotta. All rights reserved.
//

import UIKit

class CustomTitleAndSubtitleView: UIView {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    static func get(title: String, subtitle: String? = nil) -> CustomTitleAndSubtitleView {
        
        let view = UINib(nibName: "CustomTitleAndSubtitleView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! CustomTitleAndSubtitleView
        
        view.titleLabel.text = title
        view.subtitleLabel.text = subtitle
        
        return view
        
    }
    
}
