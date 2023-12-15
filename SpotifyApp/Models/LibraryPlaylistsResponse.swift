//
//  LibraryPlaylistsResponse.swift
//  SpotifyApp
//
//  Created by David Kochkin on 11.12.2023.
//

import Foundation

struct LibraryPlaylistsResponse: Codable {
    let items: [Playlist]
}
