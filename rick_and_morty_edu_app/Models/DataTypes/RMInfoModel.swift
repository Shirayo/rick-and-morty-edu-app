//
//  RMInfoModel.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 13.03.2023.
//

import Foundation

struct InfoModel: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
