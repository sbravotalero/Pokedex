//
//  SplashViewController.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    var model: SplashViewModel!

    // MARK: - Life Cycle
    deinit {
        model = nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        model = SplashViewModel()
        model.fetchData()
        
        model.loadCompleted = { [weak self] in
            let pokemonList = self?.model.pokemonList
            let viewController = PokemonListViewController.getViewController(pokemonList)
            self?.present(viewController, animated: true, completion: nil)
        }
    }
}
