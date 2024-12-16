//
//  CharacterDetailVM.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import Foundation

protocol CharacterDetailVMProtocol {
    var imageUrl: String { get }
    var status: String { get }
    var species: String { get }
    var location: String { get }
    var origin: String { get }

    func loadEpisodesNamesAndURLS()
}

final class CharacterDetailVM: ObservableObject {

    @Published private(set) var result: Res?
    @Published private(set) var episodeNames: [String] = []

    private let networkService: NetworkServiceProtocol

    init(result: Res? = nil, networkService: NetworkServiceProtocol = Network()) {
        self.result = result
        self.networkService = networkService
    }

    private func getEpisodes(with url: String) {
        networkService.request(url, method: .get, parameters: nil, headers: nil)
        { [weak self] (result: Result<EpisodeModel, Error>) in
            guard let self else { return }
            switch result {
            case .success(let episode):
                self.episodeNames.append(episode.name ?? "")
            case .failure(let error):
                print(error)
            }
        }
    }

}

extension CharacterDetailVM: CharacterDetailVMProtocol {

    func loadEpisodesNamesAndURLS() {
        for episodeUrl in result?.episode ?? [] {
            getEpisodes(with: episodeUrl)
        }
    }

    var imageUrl: String {
        guard let image = result?.image else { return "" }
        return image
    }

    var status: String {
        guard let status = result?.status else { return "" }
        return status.rawValue
    }

    var species: String {
        guard let species = result?.species else { return "" }
        return species.rawValue
    }

    var location: String {
        guard let location = result?.location?.name else { return "" }
        return location
    }

    var origin: String {
        guard let origin = result?.origin?.name else { return "" }
        return origin
    }
}
