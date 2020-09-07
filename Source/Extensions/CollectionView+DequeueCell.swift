//
//  CollectionViewCell+Dequeue.swift
//  UIKitCore
//
//  Created by Manish on 25/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

extension UICollectionView {

    func dequeue<T: UICollectionViewCell> (_: T.Type,
                                           for indexPath: IndexPath) -> T {

        guard let cell = dequeueCell(reuseIdentifier: String(describing: T.self), for: indexPath) as? T else {
            fatalError("Could not deque cell with type \(T.self)")
        }

        return cell
    }

    func dequeueCell (reuseIdentifier identifier: String,
                      for indexPath: IndexPath) -> UICollectionViewCell {
        return self.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
    }

}
