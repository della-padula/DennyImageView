//
//  DennyNavigationBar.swift
//  DennyNavigationBar
//
//  Created by Denny on 2020/09/05.
//

import Foundation
import UIKit

public class DennyNavigationBar: UINavigationBar {
    public func setBottomBorderColor(color: UIColor, height: CGFloat = (1.0 / UIScreen.main.scale)) {
        self.shadowImage = UIImage.init(color: color, size: CGSize(width: height, height: height))
    }
}
