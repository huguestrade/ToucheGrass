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
        NavigationView {
            VStack {
                Text("Touch Grass")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                NavigationLink(destination: ChartView(data: data)) {
                    Chart(data.sorted(), id: \.name) {app in
                        BarMark(
                            x: .value("Nom image", app.iconName),
                            y: .value("Temps d'utilisation", app.useTime)
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10)
                            .scale(x: 0.3, y: 1))
                    }
                    .frame(width: /*@START_MENU_TOKEN@*/350.0/*@END_MENU_TOKEN@*/, height: 300.0, alignment: .topLeading)
                    .chartXAxis {
                        AxisMarks { value in
                            AxisValueLabel {
                                Image(value.as(String.self)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25)
                                    .cornerRadius(5)
                            }
                        }
                    }
                    .chartScrollableAxes(.horizontal)
                    .chartXVisibleDomain(length: 5)
                    .padding(.all, 15)
                }
                .buttonStyle(PlainButtonStyle())
              
                Divider()
                
                Spacer()
                
                NavigationLink(destination: ListView(data: data.sorted())) {
                    ListView(data: data.sorted())
                        .padding(.all, 15.0)
                }
                .buttonStyle(PlainButtonStyle())
            }
            
        }
        
        
    }
}

#Preview {
    MainView(data: AppModel.testData)
}
