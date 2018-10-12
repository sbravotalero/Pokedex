//
//  System.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/12/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import UIKit

struct System {
    static func changeRootController(_ viewController: UIViewController) {
        UIApplication.shared.keyWindow?.rootViewController = viewController
    }
}
