//
//  MIPivotPageControllerMenuCell.swift
//  MIPivotPageController
//
//  Created by Mario on 17/09/16.
//  Copyright © 2016 Mario Iannotta. All rights reserved.
//

import UIKit

class MIPivotPageControllerMenuCell: UICollectionViewCell {
    
    static let cellNib = UINib(nibName: "MIPivotPageControllerMenuCell", bundle: nil)
    static let cellIdentifier = "MIPivotPageControllerMenuCell"
    
    struct Config {
        
        static let iconSelectedAlpha: CGFloat = 1
        static let iconUnselectedAlpha: CGFloat = 0.6
        
        static let expandedPadding: CGFloat = 5
        static let contractedPadding: CGFloat = 15
        
    }
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    func configure(image: UIImage?, selected: Bool) {
        
        iconImageView.image = image
        
        let selectedAsFloat: Float = selected ? 1 : 0
        
        updateForAnimationProgress(selectedAsFloat)
        
    }
    
    func updateForAnimationProgress(_ animationProgress: Float) {
        
        let animationProgress = max(0, animationProgress)
        
        let alphaForAnimationProgress = Config.iconSelectedAlpha * CGFloat(animationProgress) + Config.iconUnselectedAlpha * CGFloat(1 - animationProgress)
        let paddingForAnimationProgress = Config.expandedPadding * CGFloat(animationProgress) + Config.contractedPadding * CGFloat(1 - animationProgress)
        
        iconImageView.alpha = alphaForAnimationProgress
        
        iconImageView.frame = CGRect(
            x: paddingForAnimationProgress,
            y: paddingForAnimationProgress,
            width: frame.width - paddingForAnimationProgress*2,
            height: frame.height - paddingForAnimationProgress*2
        )
        
    }

}
