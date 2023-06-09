//
//  OvercomeApp.swift
//  Overcome
//
//  Created by John Smith on 3/9/23.
//

import SwiftUI

@main
struct OvercomeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
