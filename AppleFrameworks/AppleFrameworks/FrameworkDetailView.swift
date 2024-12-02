//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Melik Demiray on 1.12.2024.
//

import SwiftUI

struct FrameworkDetailView: View {

    var description: String
    var imageName: String
    var title: String

    var body: some View {
        VStack {
            Spacer()

            FrameWorkView(imageName: imageName, title: title)
            Text(description)
                .padding(8)
                .lineLimit(nil)
                .font(.body)

            Spacer()

            Button {
                print("Button Tapped")
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
                .padding(8)
        }

    }
}

#Preview {
    FrameworkDetailView(description: "This is a description", imageName: "globe", title: "Hello, World!")
}
