//
//  RMRequest.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 08.03.2023.
//

import Foundation


/// Object taht represents a single API call
final class RMRequest {
    ///API Constants
    private enum Constants {
        static let baseUrl = "https://rickandmortyapi.com/api/"
    }
    
    ///Desired endpoint
    private let endpoint: RMEndPoint
    
    ///Path components if any
    private let pathComponents: [String]
    
    //Query arguments if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var urlString = Constants.baseUrl
        urlString += endpoint.rawValue
        
        for pathComponent in pathComponents {
            urlString += "/" + pathComponent
        }
         
        //my implementation
//        if !queryParameters.isEmpty {
//            urlString += "?"
//            for i in 0..<queryParameters.count {
//                guard let value = item.value else { return }
//                urlString += queryParameters[i].name + "=" + queryParameters[i].value
//                if i != queryParameters.count - 1 {
//                    urlString += "&"
//                }
//            }
//        }
        //course implementation
        
        if !queryParameters.isEmpty {
            urlString += "?"
            let argumentString = queryParameters.compactMap ({ item in
                guard let value = item.value else { return nil }
                return "\(item.name)=\(value)"
            })
            .joined(separator: "&")
            urlString += argumentString
        }
//
        return urlString
    }
    
    /// Computed & counstructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    /// Construct request
    ///  - Parameters:
    ///     - endpoint: Target endpoint
    ///     - pathComponents: Collection of Path components
    ///     - queryParameters: Collection of query parameters
    public init(
        endpoint: RMEndPoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
    static let listLocationsRequest = RMRequest(endpoint: .location)
    static let listEpisodesRequest = RMRequest(endpoint: .episode)
}
