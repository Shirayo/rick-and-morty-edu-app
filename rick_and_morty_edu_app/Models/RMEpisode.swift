//
//  RMEpisode.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 20.01.2023.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
