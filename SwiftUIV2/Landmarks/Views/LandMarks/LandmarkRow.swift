//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Melik Demiray on 27.11.2024.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {

    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(.circle)
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            Text(landmark.name)
            Spacer()
            Image(systemName: landmark.isFavorite ? "star.fill" : "star")
                .foregroundColor(.yellow)
        }

    }
}

#Preview {
    let landMarks = ModelData().landmarks
    return Group {
        LandmarkRow(landmark: landMarks[0])
        LandmarkRow(landmark: landMarks[1])
    }
}
