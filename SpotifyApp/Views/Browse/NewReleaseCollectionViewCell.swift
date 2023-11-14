//
//  NewReleaseCollectionViewCell.swift
//  SpotifyApp
//
//  Created by David Kochkin on 10.11.2023.
//

import UIKit
import SDWebImage

class NewReleaseCollectionViewCell: UICollectionViewCell {
    static let identifier = "NewReleaseCollectionViewCell"
    
    private let albumCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "photo")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let albumNameLabel: UILabel = {
        let albumName = UILabel()
        albumName.numberOfLines = 0
        albumName.font = .systemFont(ofSize: 20, weight: .semibold)
        return albumName
    }()
    
    private let numberOfTracksLabel: UILabel = {
        let albumName = UILabel()
        albumName.font = .systemFont(ofSize: 18, weight: .thin)
        albumName.numberOfLines = 0
        return albumName
    }()
    
    private let artistNameLabel: UILabel = {
        let name = UILabel()
        name.numberOfLines = 0
        name.font = .systemFont(ofSize: 18, weight: .light)
        return name
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .secondarySystemBackground
        contentView.addSubview(albumCoverImageView)
        contentView.addSubview(albumNameLabel)
        contentView.addSubview(artistNameLabel)
        contentView.clipsToBounds = true
        contentView.addSubview(numberOfTracksLabel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize: CGFloat = contentView.height - 10
        albumCoverImageView.frame = CGRect(x: 10, y: 5, width: imageSize, height: imageSize)
        
        let labelX = albumCoverImageView.right + 10
        let labelWidth = contentView.width - labelX - 10
        
        albumNameLabel.frame = CGRect(
            x: labelX,
            y: 5,
            width: labelWidth,
            height: 60)
        
        artistNameLabel.frame = CGRect(
            x: albumCoverImageView.right+10,
            y: albumNameLabel.bottom,
            width: contentView.width - albumCoverImageView.right-10,
            height: 30)
        
        numberOfTracksLabel.sizeToFit()
        
        numberOfTracksLabel.frame = CGRect(
            x: labelX,
            y: contentView.height - 44,
            width: labelWidth,
            height: 44)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        albumNameLabel.text = nil
        artistNameLabel.text = nil
        numberOfTracksLabel.text = nil
        albumCoverImageView.image = nil
    }
    
    func configure(with viewModel: NewReleasesAsCellViewModel) {
        albumNameLabel.text = viewModel.name
        artistNameLabel.text = viewModel.artistName
        numberOfTracksLabel.text = "Tracks: \(viewModel.numberOfTracks)"
        albumCoverImageView.sd_setImage(with: viewModel.artworkURL, completed: nil)
    }
}
