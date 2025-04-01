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
        VStack(alignment: .leading) {
            Text("Temps d'utilisation")
                .padding(.leading, 20.0)
            List {
                ForEach(data) {app in RowView(app: app)}
            }
            .listStyle(PlainListStyle())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ListView(data: AppModel.testData)
}
