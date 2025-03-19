//
//  ListView.swift
//  ToucheGrass
//
//  Created by estrade hugues on 11/03/2025.
//

import SwiftUI

struct ListView: View {
    
    var data: [AppModel]
    
    var body: some View {
        VStack {
            Text("Application Time")
            List {
                ForEach(data) {app in RowView(app: app)}
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    ListView(data: AppModel.testData)
}
