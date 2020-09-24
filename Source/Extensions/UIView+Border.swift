//
//  UIView+Border.swift
//  UIkitCore
//
//  Created by Manish on 24/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {

    func border(color: UIColor = .black,
                width: CGFloat = .zero) {

        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }

}
