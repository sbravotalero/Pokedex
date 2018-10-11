//
//  Endpoint.swift
//  Pokedex
//
//  Created by Sergio David Bravo Talero on 10/11/18.
//  Copyright © 2018 Sergio David Bravo Talero. All rights reserved.
//

import Foundation

final class Endpoint {
    enum EndpointType: String {
        case pokemon = "pokemon/"
        case type = "type/"
        case ability = "ability/"
    }
    
    private let baseUrl = "https://pokeapi.co/api/v2/"
    static let shared = Endpoint()
    
    /**
     Returns endpoint for obtaining specified json
     
     - Parameters:
        - type: The type of endpoint, can be pokemon, type or ability.
        - code: Code for pokemon, ability or type. If not provided, a list of the type is returned. Nil by default.
     - Returns: A given a URL to use in requests to obtain information.
    */
    func get(_ type: EndpointType, code: Int? = nil) -> URL? {
        if let code = code {
            return URL(string: baseUrl + type.rawValue + "\(code)")
        } else {
            return URL(string: baseUrl + type.rawValue)
        }
    }
}
