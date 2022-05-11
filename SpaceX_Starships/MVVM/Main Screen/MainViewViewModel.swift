//
//  MainViewViewModel.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import Foundation

class MainViewNetworkManager: ObservableObject {
    
    @Published var rocketsArray: [Model] = []
    
    func getDataForMainView() {
        if let url = URL(string: "https://api.spacexdata.com/v4/rockets") {
            URLSession.shared.dataTask(with: url) { data, responce, error in
                if error != nil {
                    print("error in responce: \(String(describing: error?.localizedDescription))")
                } else {
                    if let resp = responce as? HTTPURLResponse, resp.statusCode == 200, let responceData = data {
                        let rockets = try? JSONDecoder().decode([Model].self, from: responceData)
                        self.rocketsArray = rockets ?? []
                    }
                }
            }
        }
    }
}
