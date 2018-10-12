//
//  PkmNavigationBar.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/12/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import UIKit

class PkmNavigationBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultInit()
    }
    
    func defaultInit() {
        isTranslucent = false
        barTintColor = UIColor.red
    }
}
