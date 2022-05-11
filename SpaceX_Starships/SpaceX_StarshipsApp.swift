//
//  SpaceX_StarshipsApp.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

@main
struct SpaceX_StarshipsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(firstNetworkManager: MainViewNetworkManager())
                .environment(\.colorScheme, .dark)
        }
    }
}
