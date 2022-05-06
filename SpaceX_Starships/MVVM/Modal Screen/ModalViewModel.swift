//
//  ModalViewModel.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import Foundation

struct ModalModel: Codable {
    let rocket: String
    let name: String
    let static_fire_date_utc: Date
    let success: Bool
}
