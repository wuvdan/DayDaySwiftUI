//
//  DayDaySwiftUIApp.swift
//  DayDaySwiftUI
//
//  Created by 吴丹 on 2022/8/22.
//

import SwiftUI

@main
struct DayDaySwiftUIApp: App {
    
    @State private var selectedIndex = 0
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedIndex) {
                ContentView().tabItem {
                    Image(systemName: "house.fill")
                    Text("Base")
                }.tag(1).badge(99)
                ThirdContentView().tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Other")
                }.tag(2).badge("New").toolbar {
                    Text("ToolBar")
                }
            }
        }
    }
}
