//
//  ListRow.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 16.12.2024.
//

import SwiftUI

struct LocationsListRow: View {

    let locationName: String
    let dimension: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                AsyncImageView(
                    url:
                        "https://cdn.icon-icons.com/icons2/2481/PNG/512/planet_icon_149820.png",
                    width: 60, height: 60, cornerRadius: 30
                )
                .frame(width: 60, height: 60)
                Text(locationName)
                    .font(.system(size: 20).bold())
                    .lineLimit(nil)
            }
            .padding(.leading, -12)
            HStack(spacing: 12) {
                AsyncImageView(
                    url:
                        "https://cdn.icon-icons.com/icons2/4148/PNG/512/dimension_modeling_d_object_icon_261221.png",
                    width: 60, height: 60, cornerRadius: 30
                )
                .frame(width: 60, height: 60)
                Text(dimension)
                    .font(.system(size: 20).bold())
                    .lineLimit(nil)
            }
            .padding(.leading, -12)
        }
        .frame(width: 300, height: 150)
        .background(
            LinearGradient(
                colors: [.green, .blue], startPoint: .top,
                endPoint: .bottom),
            in: RoundedRectangle(cornerRadius: 20))

    }
}

#Preview {
    LocationsListRow(locationName: "Earth", dimension: "Dimension C-137")
}
