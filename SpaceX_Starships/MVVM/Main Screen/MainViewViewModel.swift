//
//  MainViewViewModel.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import Foundation

class MainViewNetworkManager: ObservableObject {
    
    @Published var rocketsArray: [Model] = []
    
    // "https://api.spacexdata.com/v4/rockets"
    
    func getDataForMainView() {
        let urlJSONString = "https://api.spacexdata.com/v4/rockets"
        guard let url = URL(string: urlJSONString) else { return }
        URLSession.shared.dataTask(with: url) { data, responce, error in
            if error != nil {
                print("ERROR!")
            } else if let resp = responce as? HTTPURLResponse, resp.statusCode == 200 {
                guard let data = data else { return }
                do {
                    let rockets = try JSONDecoder().decode([Model].self, from: data)
                    self.rocketsArray = rockets
                    print(self.rocketsArray)
                } catch let jsonError {
                    print("Error serializing json: \(jsonError)")
                }
            }
        }.resume()
    }
}

class MainViewViewModel: ObservableObject {
    
    func convertDateToString(_ date: Date) -> String {
        
        
        return ""
    }
}
