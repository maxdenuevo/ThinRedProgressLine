//
//  ThinRedLineApp.swift
//  ThinRedLine
//
//  Created by Maximiliano Ihnen on 19-01-26.
//

import SwiftUI
import CoreData

@main
struct ThinRedLineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
