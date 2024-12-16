//
//  TabView.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 15.12.2024.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            CharacterV()
                .tabItem {
                    Label("Characters", systemImage: "person.3.fill")
                }
            ContentView()
                .tabItem {
                    Label("Locations", systemImage: "location.fill")
                }


        }

    }
}

#Preview {
    TabbarView()
}
