//
//  WindowGroupDemoApp.swift
//  WindowGroupDemo
//
//  Created by Viktor Shurapov on 11/15/22.
//

import SwiftUI

@main
struct WindowGroupDemoApp: App {
    @Environment(\.openURL) var openURL
    
    var body: some Scene {
        // MARK: - WindowGroup ContentView
        WindowGroup {
            ContentView()
                .frame(width: 300, height: 250)
            // activate existing window if exists
            // main window will be only one
            .handlesExternalEvents(preferring: ["main"], allowing: ["main"])
        }
        
        // MARK: - MenuBar commands
        .commands {
            CommandMenu("Custom Menu") {
                Button("Show my Scene") {
                    openURL(URL(string: "myApp://myScene")!)
                }
                .keyboardShortcut("w")
            }
        }
        
        // MARK: - Custom View that conforms to Scene protocol
        MyScene()
            .handlesExternalEvents(matching: ["myScene"])
        
        // MARK: - Preferences
        Settings {
            VStack {
                Text("My SettingsView")
                    .frame(width: 300, height: 400)
            }
        }
    }
}
