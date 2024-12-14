//
//  ListRow.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import SwiftUI

struct ListRow: View {

    var imageUrl: String
    var name: String
    var species: String

    var body: some View {
        HStack {
            AsyncImage(
                url: URL(
                    string:
                        imageUrl
                )
            ) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .shadow(radius: 10, x: 5, y: 5)
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    .padding()
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                Text(species)
                    .font(.subheadline)
            }
            .foregroundColor(Color(uiColor: .label))
        }
    }
}

#Preview {
    ListRow(
        imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        name: "Rick Sanchez", species: "Human")
}
