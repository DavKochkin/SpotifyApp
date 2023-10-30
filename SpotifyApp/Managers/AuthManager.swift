//
//  AuthManager.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation

final class AuthManager {
    static let shared  = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tkoenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
