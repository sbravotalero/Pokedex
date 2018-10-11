//
//  UIViewController+StoryboardIdentifiable.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: StoryboardIdentifiable {}

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
