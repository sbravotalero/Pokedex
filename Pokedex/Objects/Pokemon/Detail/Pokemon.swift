//
//  Pokemon.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation
import ObjectMapper

struct Pokemon: Mappable {
    var name: String?
    var url: URL?
    var weight: Int?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        name    <- map["name"]
        url     <- (map["url"], TransformOf<URL, String>(fromJSON: { URL(string: $0 ?? "") }, toJSON: { $0?.absoluteString }))
        weight  <- map["weight"]
    }
}
