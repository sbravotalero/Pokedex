//
//  PkmListCollectionViewCell.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/12/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import UIKit

class PkmListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pkmName: UILabel!
    
    func configure(with pokemon: Pokemon) {
        pkmName.text = pokemon.name?.capitalized
    }
}
