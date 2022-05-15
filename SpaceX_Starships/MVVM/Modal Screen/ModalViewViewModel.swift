//
//  ModalViewViewModel.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import Foundation

class ModalViewNetworkManager: ObservableObject {
    
    @Published var launchesArray: [ModalModel] = []
    
    // "https://api.spacexdata.com/v4/launches"
    
    func getDataForModalView() {
        let urlJSONString = "https://api.spacexdata.com/v4/launches"
        guard let url = URL(string: urlJSONString) else { return }
        URLSession.shared.dataTask(with: url) { data, responce, error in
            if error != nil {
                print("ERROR!")
            } else if let resp = responce as? HTTPURLResponse, resp.statusCode == 200 {
                guard let data = data else { return }
                do {
                    let rockets = try JSONDecoder().decode([ModalModel].self, from: data)
                    self.launchesArray = rockets
                } catch let jsonError {
                    print("Error serializing json: \(jsonError)")
                }
            }
        }.resume()
    }
}
