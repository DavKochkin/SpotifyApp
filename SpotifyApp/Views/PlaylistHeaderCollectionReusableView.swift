//
//  PlaylistHeaderCollectionReusableView.swift
//  SpotifyApp
//
//  Created by David Kochkin on 20.11.2023.
//

import UIKit
import SDWebImage

final class PlaylistHeaderCollectionReusableView: UICollectionReusableView {
        static let identifier = "PlaylistHeaderCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
}
