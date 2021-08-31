//
//  PokedexView.swift
//  pokedex (iOS)
//
//  Created by Yalçın Golayoğlu on 30.08.2021.
//

import SwiftUI

struct PokedexView: View {
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(viewModel.pokemon){ pokemon in
                        NavigationLink(
                            destination: pokemonDetailView(pokemon: pokemon, viewModel: PokemonViewModel()),
                            label: {
                                pokemonContainer(pokemon: pokemon)
                            })
                    }
                }
            }.navigationTitle("Pokedex")
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
