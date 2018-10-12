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
    var pokemonList: PokemonList?
    let dispatchGroup = DispatchGroup()
    
    func fetchData(completion: @escaping (() -> Void)) {
        fetchPokemonList()
        dispatchGroup.notify(queue: .main) {
            completion()
        }
    }
    
    fileprivate func fetchPokemonList() {
        guard let url = Endpoint.shared.get(.pokemon) else {
            print("Failed to get endpoint url")
            return
        }
        
        dispatchGroup.enter()
        Alamofire.request(url).responseObject { [weak self] (response: DataResponse<PokemonList>) in
            if let error = response.error {
                print(error)
                self?.dispatchGroup.leave()
                return
            }
            
            guard let pokemonListResponse = response.result.value else { return }
            self?.pokemonList = pokemonListResponse
            self?.dispatchGroup.leave()
        }
    }
}
