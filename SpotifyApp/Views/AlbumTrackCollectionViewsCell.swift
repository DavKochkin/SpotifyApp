//
//  AlbumTrackCollectionViewsCell.swift
//  SpotifyApp
//
//  Created by David Kochkin on 23.11.2023.
//

import Foundation
import UIKit

class AlbumTrackCollectionViewsCell: UICollectionViewCell {
    static let identifier = "AlbumTrackCollectionViewsCell"
    
    private let trackNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    
    private let artistNameLabel: UILabel = {
        let name = UILabel()
        name.numberOfLines = 0
        name.font = .systemFont(ofSize: 15, weight: .thin)
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(trackNameLabel)
        contentView.addSubview(artistNameLabel)
        contentView.clipsToBounds = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    
        trackNameLabel.frame = CGRect(x: 10,
                                      y: 0,
                                      width: contentView.width-15,
                                      height: contentView.height/2)
        
        artistNameLabel.frame = CGRect(x: 10,
                                       y: contentView.height/2,
                                       width: contentView.width-15,
                                       height: contentView.height/2)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        trackNameLabel.text = nil
        artistNameLabel.text = nil
    }
    
    func configure(with viewModel: RecommendedTrackCellViewModel) {
        trackNameLabel.text = viewModel.name
        artistNameLabel.text = viewModel.artistName
    }
}
