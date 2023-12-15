//
//  LibraryAlbumsResponse.swift
//  SpotifyApp
//
//  Created by David Kochkin on 15.12.2023.
//

import Foundation

struct LibraryAlbumsResponse: Codable {
    let items: [SavedAlbum]
}

struct SavedAlbum: Codable {
    let added_at: String
    let album: Album
}
