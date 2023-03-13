//
//  GetCharactersResponse.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 13.03.2023.
//

import Foundation

struct GetCharactersResponse: Codable {
    let info: InfoModel
    let results: [RMCharacter]
}

