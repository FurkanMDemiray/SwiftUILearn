//
//  Locations.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 16.12.2024.
//

import SwiftUI

struct LocationsV: View {

    @StateObject var viewModel: LocationsVM = LocationsVM()

    var body: some View {
        NavigationView {
            List(viewModel.locations) { location in
                //                NavigationLink(destination: LocationDetailV(location: location)) {
                //                    ListRowLocation(location: location)
                //                }
                ForEach(location.results ?? [], id: \.id) { result in
                    if let name = result.name,
                        let type = result.type,
                        let dimension = result.dimension
                    {
                        LocationsListRow(
                            locationName: name, dimension: dimension)
                    }
                }

            }
        }
        .navigationTitle("Locations")
        .onAppear {
            viewModel.getLocations()
        }
    }
}

#Preview {
    LocationsV()
}
