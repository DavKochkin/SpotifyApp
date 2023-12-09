//
//  LibraryViewController.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import UIKit

class LibraryViewController: UIViewController {
    
    private let playlistsVC = LibraryPlaylistsViewController()
    private let albumsVC = LibraryAlbumsViewController()
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.isPagingEnabled = true
        return scroll
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        scrollView.backgroundColor = .yellow
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.frame = CGRect(x: 0,
                                  y: view.safeAreaInsets.top+55,
                                  width: view.width,
                                  height: view.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-55)
    }
}


extension LibraryViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}
