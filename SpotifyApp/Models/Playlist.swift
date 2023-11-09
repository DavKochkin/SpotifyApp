//
//  Playlist.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [ApiImage]
    let name: String
    let owner: User
}
