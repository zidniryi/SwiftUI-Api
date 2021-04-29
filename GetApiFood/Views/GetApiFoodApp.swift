//
//  GetApiFoodApp.swift
//  GetApiFood
//
//  Created by Zidni on 28/04/21.
//

import SwiftUI



@main
struct GetApiFoodApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
               ContentView()
                 .tabItem {
                    Image(systemName: "homekit")
                    Text("Home")
               }
               ProfileView()
                 .tabItem {
                    Image(systemName: "person.fill")
                    Text("About Tab")
              }
            }
        }
    }
}
