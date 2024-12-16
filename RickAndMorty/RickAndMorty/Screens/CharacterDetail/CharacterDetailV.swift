//
//  CharacterDetailV.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import SwiftUI

struct CharacterDetailV: View {

    @StateObject private var viewModel: CharacterDetailVM

    init(result: Res) {
        _viewModel = StateObject(
            wrappedValue: CharacterDetailVM(result: result))
        UITableView.appearance().showsVerticalScrollIndicator = false
    }

    var body: some View {

        AsyncImageView(
            url: viewModel.imageUrl,
            width: 300,
            height: 300,
            cornerRadius: 20
        )

        HStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(
                            viewModel.status == "Alive" ? .green : .red)
                    Text(viewModel.status)
                        .font(.system(size: 32).bold())

                }
                Text("Species: \(String(describing: viewModel.species))")
                    .font(.system(size: 24).weight(.regular))
                Text("Location: \(viewModel.location)")
                    .font(.system(size: 24).weight(.regular))
                Text("Episodes:")
                    .font(.system(size: 32).bold())
                List {
                    ForEach(viewModel.episodeNames, id: \.self) {
                        episodeName in
                        Text(episodeName)
                            .font(.system(size: 24).weight(.regular))
                            .lineLimit(nil)
                            .padding(.trailing, 20)
                    }
                }
                .listStyle(PlainListStyle())

            }
            .padding()
            Spacer()
        }

        .onAppear {
            viewModel.loadEpisodesNamesAndURLS()
        }
    }
}

let mockResult = Res(
    id: 1, name: "Rick Sanchez", status: .alive, species: .human, type: "Human",
    gender: .male, origin: Location(name: "Earth", url: ""),
    location: Location(name: "Earth", url: ""),
    image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
    episode: [], url: "", created: "")

#Preview {
    CharacterDetailV(result: mockResult)
}
