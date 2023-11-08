//
//  ViewController.swift
//  SpotifyApp
//
//  Created by David Kochkin on 30.10.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
            style: .done,
            target: self,
            action: #selector(didTapSetting))
        
        fetchData()
    }
    
    private func fetchData() {
        APIRCaller.shared.getFeaturedPlaylist { _ in
        }
    }
    
    @objc func didTapSetting() {
        let vc = SettingsViewController()
        vc.title = "Settings"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
}

