//
//  PokemonListViewController.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import UIKit

class PokemonListViewController: UIViewController {
    var model: PokemonListViewModel!
    
    // MARK: - Life Cycle
    deinit {
        model = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - ViewController Getter
    static func getViewController(_ pokemonList: PokemonList?) -> UIViewController {
        let viewController: PokemonListViewController = UIStoryboard(storyboard: .pokemon).instantiateViewController()
        viewController.model = PokemonListViewModel(list: pokemonList)
        return viewController
    }
    
    
}
