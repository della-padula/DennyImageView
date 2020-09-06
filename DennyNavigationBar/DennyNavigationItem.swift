//
//  DennyNavigationItem.swift
//  DennyNavigationBar
//
//  Created by Denny on 2020/09/06.
//

import Foundation
import UIKit

public class DennyNavigationItem: UINavigationItem {
    private var rightButtons: [UIBarButtonItem] = [UIBarButtonItem]()
    public var rightButtonCount: Int = 2
    
    public func addRightButton(title: String?, style: UIBarButtonItem.Style, target: Any?, action: Selector?) {
        let button = UIBarButtonItem(title: title, style: style, target: target, action: action)
        if rightButtons.count > (rightButtonCount - 1) {
            rightButtons.removeFirst()
        }
        rightButtons.append(button)
        self.rightBarButtonItems = rightButtons
    }
}
