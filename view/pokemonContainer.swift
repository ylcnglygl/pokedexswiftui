//
//  pokemonContainer.swift
//  pokedex (iOS)
//
//  Created by Yalçın Golayoğlu on 30.08.2021.
//

import SwiftUI
import Kingfisher

struct pokemonContainer: View {
    let pokemon: Pokemon
    let viewModel = PokemonViewModel()

    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pokemon.name).font(.headline).foregroundColor(.white).padding(.top, 4).padding(.leading)
                HStack{
                    Text(pokemon.type).foregroundColor(.white).bold().font(.subheadline).padding(.horizontal, 15).padding(.vertical, 5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.2))
                    ).frame(width: 100, height: 24, alignment: .center)
                    KFImage(URL(string: pokemon.imageUrl)).resizable().scaledToFit().frame(width: 68, height: 68).padding([.bottom, .trailing], 4)
                   
                }
                
            }
            
        }.background(viewModel.backgroundColor(forType: pokemon.type)).cornerRadius(12).shadow(color: viewModel.backgroundColor(forType: pokemon.type), radius: 6, x: 0.0, y: 0.0)
        }
}

struct pokemonContainer_Previews: PreviewProvider {
    static var previews: some View {
        pokemonContainer(pokemon: Pokemon(id: 1, name: "", imageUrl: "", type: "", attack: 1, defense: 1, description: ""))
    }
}
