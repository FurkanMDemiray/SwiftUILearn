//
//  FrameWorkView.swift
//  AppleFrameworks
//
//  Created by Melik Demiray on 1.12.2024.
//

import SwiftUI

struct FrameWorkView: View {

    var imageName: String
    var title: String

    var body: some View {
        VStack() {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 100, height: 100)
            // add gradient color to image tint color
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom))

            Text(title)
                .font(.headline)
                .padding(8)
                .foregroundColor(Color(.label))
        }

    }
}

#Preview {
    FrameWorkView(imageName: "globe", title: "Hello, World!")
}
