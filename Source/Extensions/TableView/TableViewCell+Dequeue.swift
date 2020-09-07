//
//  TableViewCell+Dequeue.swift
//  UIkitCore
//
//  Created by Manish on 07/09/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

public extension UITableView {

    func dequeue<T: UITableViewCell> (_: T.Type,
                                      for indexPath: IndexPath) -> T {

        guard let cell = dequeueCell(reuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Could not deque cell with type \(T.self)")
        }

        return cell
    }

    func dequeueCell (reuseIdentifier identifier: String,
                      for indexPath: IndexPath) -> UITableViewCell {
        return self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }

}
