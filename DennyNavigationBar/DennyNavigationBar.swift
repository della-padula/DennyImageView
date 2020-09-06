//
//  DennyNavigationBar.swift
//  DennyNavigationBar
//
//  Created by Denny on 2020/09/05.
//

import Foundation
import UIKit

public class DennyNavigationBar: UINavigationBar {
    private let emptyShadowImage: UIImage? = UIImage(color: UIColor.clear, size: CGSize(width: 1, height: 1.0 / UIScreen.main.scale))
    
    private var bottomBorderImage: UIImage? {
        didSet {
            self.shadowImage = bottomBorderImage
        }
    }
    
    public func setBackButtonImage(image: UIImage?) {
        self.backIndicatorImage = image
        self.backIndicatorTransitionMaskImage = image
    }
    
    public func setBottomBorderHidden(isHidden: Bool) {
        if isHidden {
            self.shadowImage = emptyShadowImage
        } else {
            self.shadowImage = bottomBorderImage
        }
    }
    
    public func removeBottomBorder() {
        self.bottomBorderImage = emptyShadowImage
    }
    
    public func setButtonTintColor(color: UIColor) {
        self.tintColor = color
    }
    
    public func setBackgroundColor(color: UIColor) {
        self.backgroundColor = color
        self.barTintColor = color
    }
    
    public func setBottomBorderColor(color: UIColor, height: CGFloat = (1.0 / UIScreen.main.scale)) {
        self.bottomBorderImage = UIImage.init(color: color, size: CGSize(width: height, height: height))
    }
}
