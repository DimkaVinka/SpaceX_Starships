//
//  MainViewModel.swift
//  SpaceX_Starships
//
//  Created by Дмитрий Виноградов on 06.05.2022.
//

import Foundation

struct Model: Decodable {
    let height: MetersFeet
    let diameter: MetersFeet
    let mass: Mass
    let first_stage: Stage
    let second_stage: Stage
    let name: String
    let cost_per_launch: Int
    let country: String
    let flickr_images: [String]
    let id: String
}

struct MetersFeet: Decodable {
    let meters: Double
    let feet: Double
}

struct Mass: Decodable {
    let kg: Double
    let lb: Double
}

struct Stage: Decodable {
    let engines: Int
    let fuel_amount_tons: Double
    let burn_time_sec: Double?
}

