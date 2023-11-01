//
//  AuthManager.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation

final class AuthManager {
    static let shared  = AuthManager()
    
    
    struct Constants {
       static let clientID = "83b86334057c4de6ab0a567da7bd4032"
       static let clientSecret = "2aa6e0b222284397a0023fb6eeb5d89b"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://iosacademy.io/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        // Get token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
