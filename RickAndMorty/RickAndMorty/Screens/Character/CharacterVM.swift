//
//  CharacterVM.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import Alamofire
import Foundation

protocol CharacterVMProtocol {
    var characters: [Character] { get }
    func fetchCharacters()
}

class CharacterVM: ObservableObject {
    @Published private(set) var characters: [Character] = []

    let networkService: NetworkService

    init(networkService: NetworkService = Network()) {
        self.networkService = networkService
    }

    func loadCharacters(_ characters: [Character]) {
        self.characters = characters
    }
}

extension CharacterVM: CharacterVMProtocol {
    func fetchCharacters() {
        // network request
        networkService.request(
            Constants.baseURL + Constants.characterURL, method: .get,
            parameters: nil, headers: nil
        ) { [weak self] (result: Result<Character, Error>) in
            switch result {
            case .success(let character):
                self?.loadCharacters([character])
            case .failure(let error):
                print(error)
            }
        }
    }

}
