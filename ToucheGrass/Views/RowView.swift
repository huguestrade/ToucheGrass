//
//  RowView.swift
//  ToucheGrass
//
//  Created by estrade hugues on 11/03/2025.
//

import SwiftUI

struct RowView: View {
    
    var useTimeMin: String
    var useTimeHour: String
    
    let app: AppModel

    init(app: AppModel) {
        self.app = app
        useTimeMin = String(format: "%.2d", app.useTime % 60)
        useTimeHour = String(app.useTime / 60)
    }
    
    var body: some View {
        HStack{
            Image(app.iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
                .cornerRadius(10)
            Text(app.name)
            Spacer()
            Text("\(useTimeHour)h\(useTimeMin)")
        }
        .font(.title2)
        .padding(.vertical, 10)
    }
}

#Preview {
    RowView(app: AppModel.testData[0])
}
