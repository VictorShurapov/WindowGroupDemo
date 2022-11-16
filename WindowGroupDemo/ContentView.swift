//
//  ContentView.swift
//  WindowGroupDemo
//
//  Created by Viktor Shurapov on 11/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world!")
    }
}

struct MyScene: Scene {
    var body: some Scene {
        WindowGroup {
            MyView()
                .frame(width: 200, height: 200)
                .background(
                    LinearGradient(
                        colors: [.blue.opacity(0.8), .yellow.opacity(0.8)],
                        startPoint: .top, endPoint: .bottom)
                )
        }
    }
}

struct MyView: View {
    var body: some View {
        Text("Aloha")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
