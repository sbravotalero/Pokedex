//
//  ReuseIdentifying.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/12/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import UIKit

protocol ReuseIdentifying: class {
    static var reuseIdentifier: String { get }
}

extension ReuseIdentifying where Self: UIView {
    static var reuseIdentifier: String {
        return String.init(describing: Self.self)
    }
}

extension ReuseIdentifying where Self: UIViewController {
    static var reuseIdentifier: String {
        return String.init(describing: Self.self)
    }
}

extension UICollectionViewCell: ReuseIdentifying {}
extension UITableViewCell: ReuseIdentifying {}
extension UIViewController: ReuseIdentifying {}
