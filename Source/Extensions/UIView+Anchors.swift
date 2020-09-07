//
//  UIView+Anchors.swift
//  UIKitCore
//
//  Created by Manish on 30/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

// MARK: - Anchors
extension UIView {

    @discardableResult
    func top(of anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.topAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

    @discardableResult
    func bottom(of anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.bottomAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

    @discardableResult
    func leading(of anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.leadingAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

    @discardableResult
    func trailing(of anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.trailingAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

    @discardableResult
    func centerX(of anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.centerXAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

    @discardableResult
    func centerY(of anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, margin: CGFloat = 0) -> Self {

        self.centerYAnchor.constraint(equalTo: anchor, constant: margin).isActive = true

        return self
    }

}
