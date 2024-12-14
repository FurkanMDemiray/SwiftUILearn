//
//  CharacterV.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import SwiftUI

struct CharacterV: View {

    @StateObject var viewModel = CharacterVM()

    var body: some View {
        List {
            ForEach(viewModel.characters) { character in
                if let results = character.results {
                    ForEach(results) { result in
                        if let imageUrl = result.image, let name = result.name,
                            let species = result.species?.rawValue
                        {
                            ListRow(
                                imageUrl: imageUrl,
                                name: name,
                                species: species
                            )
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchCharacters()
        }
    }
}

#Preview {
    CharacterV()
}
