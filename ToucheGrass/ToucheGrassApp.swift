//
//  ToucheGrassApp.swift
//  ToucheGrass
//
//  Created by estrade hugues on 18/02/2025.
//

import SwiftUI

@main
struct ToucheGrassApp: App {
    var body: some Scene {
        WindowGroup {
            ChartView(data: AppModel.testData)
        }
    }
}
