//
//  Magic8Ball_iOS_DemoApp.swift
//  Magic8Ball-iOS-Demo
//
//  Created by gianmarco salerno on 7/18/25.
//

import SwiftUI
import SwiftData

@main
struct Magic8Ball_iOS_DemoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
