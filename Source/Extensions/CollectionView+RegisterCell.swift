//
//  CollectionViewCell+Register.swift
//  UIKitCore
//
//  Created by Manish on 25/08/20.
//  Copyright © 2020 Manish. All rights reserved.
//

import UIKit

extension UICollectionView {

    func register<T: UICollectionViewCell> (_: T.Type) {

        self.register(T.self, forCellWithReuseIdentifier: String(describing: T.self))
    }

}
