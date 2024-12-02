//
//  FrameworkViewModel.swift
//  AppleFrameworks
//
//  Created by Melik Demiray on 1.12.2024.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
}
