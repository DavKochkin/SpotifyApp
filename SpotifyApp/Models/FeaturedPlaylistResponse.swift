//
//  FeaturedPlaylistResponse.swift
//  SpotifyApp
//
//  Created by David Kochkin on 08.11.2023.
//

import Foundation

struct FeaturedPlaylistResponse: Codable {
    let playlist: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct User: Codable {
    let display_name: String
    let external_urls: [String: String]
    let id: String
}
