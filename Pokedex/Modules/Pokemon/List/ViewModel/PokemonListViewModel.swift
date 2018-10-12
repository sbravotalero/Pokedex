//
//  PokemonListViewModel.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import UIKit

class PokemonListViewModel {
    var list: PokemonList?
    var reuseIdentifier: String {
        return PkmListCollectionViewCell.reuseIdentifier
    }
    
    init(list: PokemonList?) {
        self.list = list
    }
}

// MARK: - Networking
extension PokemonListViewModel {
    func fecthPokemonData(_ url: URL) {
        Alamofire.request(url).responseObject { (response: DataResponse<Pokemon>) in
            print(response)
        }
    }
}

// MARK: - UICollectionView
extension PokemonListViewModel {
    var numberOfItems: Int {
        return list?.pokemon.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PkmListCollectionViewCell
        cell.configure(with: list!.pokemon[indexPath.row])
        return cell
    }
    
    var sizeForItem: CGSize {
        let widthScreen = UIScreen.main.bounds.size.width
        return CGSize(width: widthScreen / 3, height: 40)
    }
    
    var insetForSection: UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    var minimumSpacing: CGFloat {
        return 0.0
    }
}
