//
//  ImageView.swift
//  SwiftUIV1
//
//  Created by Melik Demiray on 25.11.2024.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("image")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    ImageView()
}
