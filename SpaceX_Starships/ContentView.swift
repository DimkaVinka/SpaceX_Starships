//
//  ContentView.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var firstNetworkManager: MainViewNetworkManager
    
    var body: some View {
        VStack {
            if !firstNetworkManager.rocketsArray.isEmpty {
                MainView()
            }
        }
        .onAppear {
            firstNetworkManager.getDataForMainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
