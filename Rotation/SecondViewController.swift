//
//  SecondViewController.swift
//  Rotation
//
//  Created by David van Enckevort on 31-07-18.
//  Copyright © 2018 All Things Digital. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, RotationEnabled {

    var canRotate = true

    @IBOutlet weak var lockButton: UIButton!
    
    @IBAction func changeLockStatus(_ sender: Any) {
        canRotate.toggle()
        let title = canRotate ? "🔓" : "🔒"
        lockButton.setTitle(title, for: .normal)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if (self.isMovingFromParent) {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
        }
    }
}
