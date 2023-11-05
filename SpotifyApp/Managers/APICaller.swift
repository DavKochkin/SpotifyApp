//
//  APICaller.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation

final class APIRCaller {
    static let shared = APIRCaller()
    
    private init() {}
    
    public func fetCurrentUserProfile(completio: @escaping (Result<UserProfile, Error>) -> Void) {
        
    }
    
    //MARK: - Private
    
    enum HTTPMethod: String {
        case GET
        case POST
    }
    
    private func createRequest(with url: URL?,
                               type: HTTPMethod,
                               completion: @escaping (URLRequest) -> Void) {
        
        AuthManager.shared.withValidToken { token in
            guard let apiURL = url else {
                return
            }
            var request = URLRequest(url: apiURL)
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            request.httpMethod = type.rawValue
            request.timeoutInterval = 30
            completion(request)
        }
    }
}
