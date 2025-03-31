//
//  App.swift
//  ToucheGrass
//
//  Created by estrade hugues on 11/03/2025.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable{
    case outil = "outil"
    case réseau = "réseaux sociaux"
    case divertissement = "divertissement"
}

struct AppModel: Identifiable, Comparable {
    var id = UUID()
    var name: String
    var useTime: Int
    var iconName: String
    var category: Category
    
    static var testData = [
        AppModel(name: "sms", useTime: 120, iconName: "icon_sms", category: .réseau),
       AppModel(name: "mail", useTime: 30, iconName: "icon_mail", category: .réseau),
       AppModel(name: "facetime", useTime: 240, iconName: "icon_facetime", category: .réseau),
       AppModel(name: "maps", useTime: 12, iconName: "icon_maps", category: .outil),
       AppModel(name: "Apple TV", useTime: 460, iconName: "icon_appletv", category: .divertissement),
       AppModel(name: "calculatrice", useTime: 25, iconName: "icon_calculette", category: .outil),
       AppModel(name: "horloge", useTime: 65, iconName: "icon_clock", category: .outil),
       AppModel(name: "news", useTime: 320, iconName: "icon_news", category: .divertissement)
    ]
    
    static func <(lhs: AppModel, rhs: AppModel) -> Bool {
        lhs.useTime > rhs.useTime
    }
}



