//
//  PlaybackPresenter.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.11.2023.
//

import Foundation
import UIKit


final class PlaybackPresenter {
    
    static func startPlayback(from viewController: UIViewController, track: AudioTrack) {
        let vc = PlayerViewController()
        viewController.present(vc, animated: true)
    }
    
    static func startPlayback(from viewController: UIViewController, album: Album) {
        
    }
    
    static func startPlayback(from viewController: UIViewController, playlist: Playlist) {
        
    }
}
