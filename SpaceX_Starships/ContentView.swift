//
//  ContentView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    var firstNetworkManager: MainViewNetworkManager
    
    var body: some View {
        MainView(rocketsArray: MainViewNetworkManager())
            .onAppear {
                firstNetworkManager.getDataForMainView()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(firstNetworkManager: MainViewNetworkManager())
            .preferredColorScheme(.dark)
    }
}
