//
//  homeInterfaceApp.swift
//  homeInterface
//
//  Created by Yiren LIU on 2024-01-16.
//

import SwiftUI

@main
struct homeInterfaceApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                Text("Automation")
                    .tabItem{
                        Image(systemName: "deskclock.fill")
                        Text("Automation")
                    }
                Text("Discover")
                    .tabItem{
                        Image(systemName: "star.fill")
                        Text("Discover")
                    }
            }
            .accentColor(.white)
        }
    }
}
