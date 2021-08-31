//
//  pokemonDetailView.swift
//  pokedex (iOS)
//
//  Created by Yalçın Golayoğlu on 31.08.2021.
//

import SwiftUI
import Kingfisher

struct pokemonDetailView: View {
    var pokemon: Pokemon
    let viewModel: PokemonViewModel
    var body: some View {
        VStack{
            KFImage(URL(string: pokemon.imageUrl)).resizable().scaledToFit().padding([.bottom, .trailing], 4)
            Text(pokemon.description).font(.body).foregroundColor(viewModel.backgroundColor(forType: pokemon.type)).padding()
            HStack{
                HStack {
                    Text("Attack: ").font(.title)
                    Text(String(pokemon.attack)).font(.title)
                }
                Spacer()
                HStack {
                    Text("Defense: ").font(.title)
                    Text(String(pokemon.defense)).font(.title)
                }
            }.padding()
            
            
           
            
        }
    }
}

struct pokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        pokemonDetailView(pokemon: Pokemon(id: 1, name: "", imageUrl: "", type: "", attack: 1, defense: 1, description: "There is a bud on this Pokémon’s back. To support its weight,\nIvysaur’s legs and trunk grow thick and strong.\nIf it starts spending more time lying in the sunlight,\nit’s a sign that the bud will bloom into a large flower soon."), viewModel: PokemonViewModel())
    }
}

