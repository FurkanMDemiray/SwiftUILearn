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
            AsyncImageView(url: imageUrl, width: 70, height: 70, cornerRadius: 35)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 20).bold())
                Text(species)
                    .font(.system(size: 18).weight(.regular))
            }
            .foregroundColor(Color(uiColor: .label))
            .padding(.trailing, 10)
        }
        //.background(LinearGradient(colors: [.purple,.red], startPoint: .top, endPoint: .bottom), in: RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ListRow(
        imageUrl: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        name: "Rick Sanchez", species: "Human")
}
