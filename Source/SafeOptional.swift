//
//  SafeOptional.swift
//  UIkitCore
//
//  Created by Manish on 24/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public func safe<Element>(_ object: [Element]?) -> [Element] {

    guard let unwrappedObject = object else { return [] }

    return unwrappedObject
}

public func safe(_ object: Bool?) -> Bool {
    guard let unwrappedObject = object else { return false }

    return unwrappedObject
}
