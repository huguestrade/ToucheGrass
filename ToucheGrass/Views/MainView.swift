//
//  MainView.swift
//  ToucheGrass
//
//  Created by user270266 on 3/31/25.
//

import SwiftUI
import Charts

struct MainView: View {
    
    var data: [AppModel]
    
    var body: some View {
        VStack {
            Text("Touch Grass")
            Chart(data.sorted(), id: \.name) {app in
                BarMark(
                    x: .value("Nom image", app.iconName),
                    y: .value("Temps d'utilisation", app.useTime)
                )
                .clipShape(RoundedRectangle(cornerRadius: 10)
                    .scale(x: 0.3, y: 1))
            }
            .chartXAxis {
                AxisMarks { value in
                    AxisValueLabel {
                        Image(value.as(String.self)!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .cornerRadius(5)
                    }
                }
            }
            .padding(.horizontal, 15)
            
        }
        Spacer()
    }
}

#Preview {
    MainView(data: AppModel.testData)
}
