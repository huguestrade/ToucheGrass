//
//  App.swift
//  ToucheGrass
//
//  Created by estrade hugues on 11/03/2025.
//

import Foundation
import SwiftUI

struct App: Identifiable {
    var id = UUID()
    var name: String
    var useTime: Int
    var iconName: String
    
    static var testData = [App(name: "sms", useTime: 120, iconName: "icon_sms"),
                           App(name: "mail", useTime: 30, iconName: "icon_mail"),
                           App(name: "facetime", useTime: 240, iconName: "icon_facetime"),
                           App(name: "maps", useTime: 12, iconName: "icon_maps")]
}
