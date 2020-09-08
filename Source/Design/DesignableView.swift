//
//  DesignableView.swift
//  UIKitCore
//
//  Created by Manish on 25/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

/// Provides design related functional methods
public protocol DesignableView: UIView {

    /// Sets background color
    /// - Parameter color: color to be set as background colorß
    @discardableResult
    func bgColor(_ color: UIColor) -> Self

    /// Sets tint color
    /// - Parameter color: color value used for tint color
    @discardableResult
    func tintColor(_ color: UIColor) -> Self

    /// Sets border with custom color, edge and size
    /// - Parameter value: `Border` properties used to apply border
    @discardableResult func border(_ value: Border) -> Self

    /// Sets radius with custom size and corner
    /// - Parameter value: `Radius` properties used to apply radius
    @discardableResult func radius(_ value: Radius) -> Self

    /// Sets custom style and overries any exsiting property matching from `Stylable`
    /// - Parameter style: properties used for custom styles
    @discardableResult func style(_ style: Stylable) -> Self
}

public extension DesignableView {

    @discardableResult
    func bgColor(_ color: UIColor) -> Self {
        self.backgroundColor = color

        return self
    }

    @discardableResult
    func tintColor(_ color: UIColor) -> Self {
        self.tintColor = color

        return self
    }

    @discardableResult
    func border(_ value: Border) -> Self {

        // remove exisitng
        UIRectEdge.allEdgeProperties.forEach { edge in
            self.layer.sublayers?.removeAll(where: { $0.name == edge.rawValue.description })
        }

        // add new
        value.edges.forEach { edge in
            self.layer.border(value.color, width: value.width, edge: edge)
        }

        return self
    }

    @discardableResult
    func radius(_ value: Radius) -> Self {
        value.corners.forEach { corner in
            self.add(radius: value.size, corner: corner)
        }

        return self
    }

    @discardableResult
    func style(_ style: Stylable) -> Self {

        // bg color
        self.bgColor(style.bgColor)
            .border(style.border)
            .radius(style.radius)
            .tintColor(style.tintColor)

        return self
    }

}
