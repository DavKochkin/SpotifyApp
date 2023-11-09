//
//  AudioTrack.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation


struct AudioTrack: Codable {
    let album: Album
    let artists: [Artist]
    let available_markets: [String]
    let disc_number: Int
    let duration_ms: Int
    let explicit: Bool
    let externals_urls: [String: String]
    let id: String
    let name: String
    let popularity: Int
}
