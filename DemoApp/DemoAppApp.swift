//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by Suparna Khamaru on 08/06/23.
//

import SwiftUI

@main
struct DemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
