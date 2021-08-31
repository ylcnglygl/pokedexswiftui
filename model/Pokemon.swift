//
//  Pokemon.swift
//  pokedex (iOS)
//
//  Created by Yalçın Golayoğlu on 30.08.2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable{
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let attack: Int
    let defense: Int
    let description: String
}
