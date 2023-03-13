//
//  RMService.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 08.03.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    ///shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {
        
    }
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
