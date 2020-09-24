//
//  Number+Angle.swift
//  UIkitCore
//
//  Created by Manish on 24/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension CGFloat {

    var angle: CGFloat {
        return (self * .pi) / 180
    }

}
