//
//  VGridView.swift
//  AppleFrameworks
//
//  Created by Melik Demiray on 1.12.2024.
//

import SwiftUI

struct VGridView: View {

    @StateObject var viewModel = FrameworkViewModel()

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())]

    var body: some View {

        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { frameWork in
                        NavigationLink(destination: FrameworkDetailView(description: "this is a description", imageName: frameWork.imageName, title: frameWork.name))
                        {
                            FrameWorkView(imageName: frameWork.imageName, title: frameWork.name)
                        }
                    }
                        .padding(8)
                }
            }
                .navigationTitle("Apple Frameworks")
                .padding(.top, 8)
        }
    }
}

#Preview {
    VGridView()
}
