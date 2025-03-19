//
//  ContentView.swift
//  ToucheGrass
//
//  Created by estrade hugues on 18/02/2025.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var data: [AppModel]
    
    var body: some View {
        VStack {
            Chart(data) {
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(data: AppModel.testData)
}
