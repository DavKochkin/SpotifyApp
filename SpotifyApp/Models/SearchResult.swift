//
//  SearchResult.swift
//  SpotifyApp
//
//  Created by David Kochkin on 28.11.2023.
//

import Foundation

enum SearchResult {
    case artist(model: Artist)
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
