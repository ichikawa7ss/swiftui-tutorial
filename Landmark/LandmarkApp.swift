//
//  LandmarkApp.swift
//  Landmark
//
//  Created by ichikawa on 2021/10/27.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
