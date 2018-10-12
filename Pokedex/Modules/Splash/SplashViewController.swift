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
        model.fetchData { [weak self] in
            let pokemonList = self?.model.pokemonList
            guard let navBar = UIStoryboard.init(storyboard: .pokemon).instantiateInitialViewController() as? UINavigationController,
                let pokemonListVC = navBar.viewControllers.first as? PokemonListViewController else { return }
            pokemonListVC.model = PokemonListViewModel(list: pokemonList)
            System.changeRootController(navBar)
        
        }
    }
}
