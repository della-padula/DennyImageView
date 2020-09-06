//
//  DennyNavigationItem.swift
//  DennyNavigationBar
//
//  Created by Denny on 2020/09/06.
//

import Foundation
import UIKit

public enum BarButtonImageMode {
    case original
    case template
    case automatic
    
    public func renderMode() -> UIImage.RenderingMode {
        switch self {
        case .original:
            return .alwaysOriginal
        case .template:
            return .alwaysTemplate
        case .automatic:
            return .automatic
        }
    }
}

public class DennyNavigationItem: UINavigationItem {
    private var rightButtons: [UIBarButtonItem] = [UIBarButtonItem]()
    public var rightButtonCount: Int = 2
    
    public func addRightButton(title: String?, style: UIBarButtonItem.Style, mode: BarButtonImageMode = .automatic, target: Any?, action: Selector?) {
        let button = UIBarButtonItem(title: title, style: style, target: target, action: action)
        if rightButtons.count > (rightButtonCount - 1) {
            rightButtons.removeFirst()
        }
        rightButtons.append(button)
        self.rightBarButtonItems = rightButtons
    }
    
    public func getRightButtons() -> [UIBarButtonItem] {
        return self.rightButtons
    }
    
    public func addRightButton(image: UIImage?, style: UIBarButtonItem.Style, mode: BarButtonImageMode = .automatic, target: Any?, action: Selector?) {
        let button = UIBarButtonItem(image: image?.withRenderingMode(mode.renderMode()), style: .plain, target: target, action: action)
        if rightButtons.count > (rightButtonCount - 1) {
            rightButtons.removeFirst()
        }
        rightButtons.append(button)
        self.rightBarButtonItems = rightButtons
    }
}
