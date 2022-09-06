//
//  AppTestsApp.swift
//  AppTests
//
//  Created by Daniel on 01/09/22.
//

import SwiftUI

@main
struct AppTestsApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
