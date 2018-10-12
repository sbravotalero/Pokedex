//
//  UIColor+Extensions.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/12/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        self.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    convenience init(netHex: Int, alpha: CGFloat) {
        let red = CGFloat((netHex >> 16) & 0xff)
        let green = CGFloat((netHex >> 8) & 0xff)
        let blue = CGFloat(netHex & 0xff)
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

extension UIColor {
    struct Signature {
        static let red = UIColor(netHex: 0xFF0000, alpha: 1.0)
    }
}
