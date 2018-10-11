//
//  SplashViewModel.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class SplashViewModel {
    var loadCompleted: (() -> Void)?
    var pokemonList: PokemonList?
    
    func fetchData() {
        fetchPokemonList { [weak self] (pokemonList) in
            self?.pokemonList = pokemonList
            self?.loadCompleted?()
        }
    }
    
    fileprivate func fetchPokemonList(completion: ((PokemonList?) -> Void)?) {
        guard let url = Endpoint.shared.get(.pokemon) else {
            print("Failed to get endpoint url")
            completion?(nil)
            return
        }
        Alamofire.request(url).responseObject { (response: DataResponse<PokemonList>) in
            if let error = response.error {
                print(error)
                completion?(nil)
                return
            }
            
            guard let pokemonListResponse = response.result.value else { return }
            completion?(pokemonListResponse)
        }
    }
}
