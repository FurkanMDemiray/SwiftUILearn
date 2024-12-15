//
//  EpisodeModel.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 15.12.2024.
//

import Foundation

// MARK: - EpisodeModel
struct EpisodeModel: Codable {
    let id: Int?
    let name, airDate, episode: String?
    let characters: [String]?
    let url: String?
    let created: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
}
