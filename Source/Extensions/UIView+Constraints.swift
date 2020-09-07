//
//  UIView+Constraints.swift
//  UIKitCore
//
//  Created by Manish on 23/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UIView {

    @discardableResult
    func sameSize(as parentView: UIView, margin: UIEdgeInsets = .zero) -> UIView {

        add(to: parentView)

        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: margin.left),
            self.trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -margin.right),
            self.topAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.topAnchor, constant: margin.top),
            self.bottomAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.bottomAnchor, constant: -margin.bottom)
        ])

        return self
    }

}

public extension UIView {

    @discardableResult
    func with(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {

        self.translatesAutoresizingMaskIntoConstraints = false

        if let unwrappedWidth = width {
            self.widthAnchor.constraint(equalToConstant: unwrappedWidth).isActive = true
        }

        if let unwrappedHeight = height {
            self.heightAnchor.constraint(equalToConstant: unwrappedHeight).isActive = true
        }

        return self
    }

}

public extension UIView {

    @discardableResult
    func add(to parentView: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false

        if !self.isDescendant(of: parentView) {
            parentView.addSubview(self)
        }

        return self
    }

}
