//
//  ContentView.swift
//  SwiftUIV1
//
//  Created by Melik Demiray on 25.11.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            MapView()
                .frame(height: 300)
                .padding(.bottom, 10)
            ImageView()
                .offset(y: -50)
                .padding(.bottom, -50)
            HStack {
                Text("Tap Me")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                Text("Test")
                    .padding()
                    .foregroundColor(.blue)
                Text("Hello, World!")
                    .padding()
                    .foregroundColor(.red)
            }
                .font(.subheadline)
            Divider()
            Text("Hello, World!")
                .padding()
                .foregroundColor(.green)
        }
            .padding()

    }

}


private func print() {
    let alert = UIAlertController(
        title: "Alert", message: "This is an alert.", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    UIApplication.shared.windows.first?.rootViewController?.present(
        alert, animated: true, completion: nil)
}

#Preview {
    ContentView()
}
