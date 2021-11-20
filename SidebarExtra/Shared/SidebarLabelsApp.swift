//
//  SidebarLabelsApp.swift
//  Shared
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

@main
struct SidebarLabelsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            SidebarCommands()
        }
    }
}
