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
}
