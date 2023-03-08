//
//  RMEndPoint.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 08.03.2023.
//

import Foundation

/// Represents unique APPI endpoint
@frozen enum RMEndPoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
