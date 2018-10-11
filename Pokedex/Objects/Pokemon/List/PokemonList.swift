//
//  PokemonList.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import ObjectMapper

struct PokemonList: Mappable {
    var count: Int?
    var pokemon: [Pokemon] = []
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        count   <- map["count"]
        pokemon <- map["results"]
    }
}
