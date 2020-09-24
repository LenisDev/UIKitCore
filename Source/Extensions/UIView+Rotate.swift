//
//  UIView+Rotate.swift
//  UIkitCore
//
//  Created by Manish on 24/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {

    func rotate(at angle: CGFloat) {
        self.transform = CGAffineTransform(rotationAngle: angle.angle)
    }

}
