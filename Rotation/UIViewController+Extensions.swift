//
//  UIViewController+Extensions.swift
//  Rotation
//
//  Created by David van Enckevort on 31-07-18.
//  Copyright © 2018 All Things Digital. All rights reserved.
//

import UIKit

extension UIViewController {
    var contentViewController: UIViewController? {
        if let vc = self as? UITabBarController {
            return vc.selectedViewController?.contentViewController
        } else if let vc = self as? UINavigationController {
            return vc.visibleViewController?.contentViewController
        } else if let vc = presentedViewController {
            return vc.contentViewController
        }
        return self
    }
}
