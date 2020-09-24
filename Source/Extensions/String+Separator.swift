//
//  String+Separator.swift
//  UIkitCore
//
//  Created by Manish on 24/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import Foundation

public enum Separator: String {

    case space = " "
    case comma = ", "
    case newline = "\n"

}

public extension String {

    func add(_ separator: Separator) -> String {
        return self + separator.rawValue
    }

}
