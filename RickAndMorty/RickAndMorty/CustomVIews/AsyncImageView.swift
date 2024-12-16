//
//  AsyncImage.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 16.12.2024.
//

import SwiftUI

struct AsyncImageView: View {

    let url: String
    let width: CGFloat, height: CGFloat
    let cornerRadius: CGFloat

    var body: some View {
        AsyncImage(
            url: URL(string: url)
        ) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .shadow(radius: 10, x: 5, y: 5)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius).stroke(
                        Color.black, lineWidth: 2)
                )
                .padding()
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    AsyncImageView(
        url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        width: 300, height: 300, cornerRadius: 20)
}
