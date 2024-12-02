//
//  MockData.swift
//  AppleFrameworks
//
//  Created by Melik Demiray on 1.12.2024.
//

import Foundation

struct Framework: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct MockData {

    static let frameworks: [Framework] = [
        Framework(name: "Alamofire", imageName: "globe"),
        Framework(name: "CoreData", imageName: "globe"),
        Framework(name: "CoreImage", imageName: "globe"),
        Framework(name: "SpriteKit", imageName: "globe"),
        Framework(name: "SwiftUI", imageName: "globe"),
        Framework(name: "UIKit", imageName: "globe"),
        Framework(name: "WatchKit", imageName: "globe"),
        Framework(name: "Combine", imageName: "globe"),
        Framework(name: "CoreML", imageName: "globe"),
        Framework(name: "Metal", imageName: "globe"),
        Framework(name: "SceneKit", imageName: "globe"),
        Framework(name: "ARKit", imageName: "globe")
    ]
}

