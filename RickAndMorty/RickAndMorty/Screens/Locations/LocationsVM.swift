//
//  LocationsVM.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 16.12.2024.
//

import Foundation

protocol LocationsVMProtocol {
    var locations: [LocationModel] { get }
    func getLocations()
}

final class LocationsVM: ObservableObject {

    @Published private(set) var locations: [LocationModel] = []

    private let networkManager: NetworkServiceProtocol

    init(networkManager: NetworkServiceProtocol = Network()) {
        self.networkManager = networkManager
    }

}

extension LocationsVM: LocationsVMProtocol {

    func getLocations() {
        networkManager.request(
            Constants.baseURL + Constants.locationURL, method: .get,
            parameters: nil, headers: nil
        ) { [weak self] (result: Result<LocationModel, Error>) in
            guard let self else { return }
            switch result {
            case .success(let location):
                self.locations.append(location)
            case .failure(let error):
                print(error)
            }
        }

    }
}
