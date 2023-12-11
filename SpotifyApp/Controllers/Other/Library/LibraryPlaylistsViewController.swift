//
//  LibraryPlaylistsViewController.swift
//  SpotifyApp
//
//  Created by David Kochkin on 08.12.2023.
//

import UIKit

class LibraryPlaylistsViewController: UIViewController {
    
    var playlists = [Playlist]()
    
    private let noPlaylistView = ActionLabelView() 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setUpNoPlaylistsView()
        fetchData()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        noPlaylistView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        noPlaylistView.center = view.center
    }
    
    private func setUpNoPlaylistsView() {
        view.addSubview(noPlaylistView)
        noPlaylistView.delegate = self
        noPlaylistView.configure(with: ActionLabelViewViewModel(text: "You don't have any playlists yet.",
                                                                actionTitle: "Create"))
    }
    
    private func fetchData() {
        APICaller.shared.getCurrentUserPlaylists { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlists):
                    self?.playlists = playlists
                    self?.updateUI()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    private func updateUI() {
        if playlists.isEmpty {
            // Show label
            noPlaylistView.isHidden = false
        }
        else {
            // Show table 
            noPlaylistView.isHidden = true
        }
    }
}


extension LibraryPlaylistsViewController: ActionLabelViewDelegate {
    func actionLabelViewDidTapButton(_ actionView: ActionLabelView) {
        // Show Creation UI
        let alert = UIAlertController(
            title: "New Playlists",
            message: "Enter Playlist name.",
            preferredStyle: .alert)
        
        alert.addTextField { textField in
            textField.placeholder = "Playlist..."
        }
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Create", style: .default, handler: { _ in
            guard let field = alert.textFields?.first,
                  let text = field.text,
                  !text.trimmingCharacters(in: .whitespaces).isEmpty else {
                return
            }
            
            APICaller.shared.createPlaylist(with: text) { success in
                if success {
                    // Refresh list of playlists
                }
                else {
                    print("Failed to create playlists")
                }
            }
        }))
        
        present(alert, animated: true)
    }
}
