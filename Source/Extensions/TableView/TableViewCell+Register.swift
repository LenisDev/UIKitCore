//
//  TableViewCell+Register.swift
//  UIkitCore
//
//  Created by Manish on 07/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UITableView {

    func register<T: UITableViewCell> (_: T.Type) {

        self.register(T.self, forCellReuseIdentifier: String(describing: T.self))

    }

}
