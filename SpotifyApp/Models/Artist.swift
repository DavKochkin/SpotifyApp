//
//  Artist.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import Foundation


struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let images: [APIImage]?
    let external_urls: [String: String]
}
