//
//  ContentView.swift
//  ToucheGrass
//
//  Created by estrade hugues on 18/02/2025.
//

import SwiftUI
import Charts

struct ContentView: View {
    @State var categoryTime: Dictionary<String, Int> = [:]
    
    func groupByCategoryTime() {
        for app in data {
            if !self.categoryTime.keys.contains(app.category.rawValue) {
                self.categoryTime.updateValue(app.useTime, forKey: app.category.rawValue)
            } else {
                self.categoryTime[app.category.rawValue]! += app.useTime
            }
        }
    }
    
    var data: [AppModel]
    
    var body: some View {
        VStack {
            Chart(categoryTime) { categorie in
                SectorMark(
                    angle: .value(
                        "Time",
                        categorie.value
                    )
                )
                .foregroundStyle(
                    by: .value("category", categorie.key)
                )
            }
            
        }
        .padding()
        .onAppear(perform: groupByCategoryTime)
    }
}

#Preview {
    ContentView(data: AppModel.testData)
}
