//
//  LibraryToggleView.swift
//  SpotifyApp
//
//  Created by David Kochkin on 09.12.2023.
//

import UIKit

class LibraryToggleView: UIView {
    
    private let playlistButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Playlists", for: .normal)
        return button
    }()
    
    private let albumsButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Albums", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addSubview(playlistButton)
        addSubview(albumsButton)
        
        playlistButton.addTarget(self, action: #selector(didTapPlaylists), for: .touchUpInside)
        albumsButton.addTarget(self, action: #selector(didTapAlbums), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapPlaylists() {
        
    }
    
    @objc func didTapAlbums() {
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playlistButton.frame = CGRect(x: 0,
                                      y: 0,
                                      width: 100,
                                      height: 50)
        
        albumsButton.frame = CGRect(x: playlistButton.right,
                                      y: 0,
                                      width: 100,
                                      height: 50)
    }
}
