//
//  LocationModel.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 16.12.2024.
//

import Foundation

// MARK: - LocationModel
struct LocationModel: Decodable, Identifiable {
    let id: Int?
    let info: Info?
    let results: [LocationResult]?
}

// MARK: - Info
struct LocationInfo: Decodable {
    let count, pages: Int?
    let next: String?
    let prev: String?
}

// MARK: - Result
struct LocationResult: Decodable {
    let id: Int?
    let name, type, dimension: String?
    let residents: [String]?
    let url: String?
    let created: String?
}
