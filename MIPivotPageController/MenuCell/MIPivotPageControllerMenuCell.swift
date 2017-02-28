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
    
    private struct IconConfig {
        
        static let iconSelectedAlpha: CGFloat = 1
        static let iconUnselectedAlpha: CGFloat = 0.6
        
        static let expandedPadding: CGFloat = 5
        static let contractedPadding: CGFloat = 15
        
    }
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet var iconImageViewMarginConstraints: [NSLayoutConstraint]!
    @IBOutlet weak var badgeBackgroundView: UIView!
    @IBOutlet weak var badgeLabel: UILabel!
    
    // MARK: - UI update
    
    func configure(image: UIImage?, badgeValue: String?, badgeConfig: MIPivotPageControllerBadgeConfig?, shouldHideBadgeOnPageFocus: Bool, selected: Bool) {
        
        iconImageView.image = image
        
        updateUI(forProgress: selected ? 1 : 0, shouldHideBadgeOnPageFocus: shouldHideBadgeOnPageFocus)
        
        if let badgeValue = badgeValue {
            
            badgeBackgroundView.isHidden = false
            
            if let badgeConfig = badgeConfig {
                
                badgeLabel.font = badgeConfig.badgeLabelFont
                badgeLabel.textColor = badgeConfig.badgeLabelColor
                badgeBackgroundView.backgroundColor = badgeConfig.badgeBackgroundColor
            }
            
            badgeLabel.text = badgeValue
            
            layoutIfNeeded() // need on iOS 10 for the cornerRadius
            badgeBackgroundView.layer.cornerRadius = badgeBackgroundView.frame.height/2
            
        } else {
            badgeBackgroundView.isHidden = true
        }
        
    }
    
    func updateUI(forProgress animationProgress: Float, shouldHideBadgeOnPageFocus: Bool) {
        
        let animationProgress = CGFloat(max(0, animationProgress))
        
        let alphaForAnimationProgress = IconConfig.iconSelectedAlpha * animationProgress + IconConfig.iconUnselectedAlpha * (1 - animationProgress)
        let paddingForAnimationProgress = IconConfig.expandedPadding * animationProgress + IconConfig.contractedPadding * (1 - animationProgress)
        
        iconImageView.alpha = alphaForAnimationProgress
        
        if shouldHideBadgeOnPageFocus {
            badgeBackgroundView.alpha = 1 - animationProgress
        }
        
        for iconImageViewMarginConstraint in iconImageViewMarginConstraints {
            iconImageViewMarginConstraint.constant = paddingForAnimationProgress
        }
        
    }

}
