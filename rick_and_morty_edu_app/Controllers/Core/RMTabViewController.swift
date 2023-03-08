//
//  ViewController.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 20.01.2023.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    private func setupTabs() {
        let charactersVC = RMCharactersViewController()
        let locationsVC = RMLocationsViewController()
        let episodesVC = RMEpisodesViewController()
        let settingsVC = RMSettingsViewController()
    
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = .init(
            title: "Characters",
            image: UIImage(systemName: "person.2"),
            tag: 1
        )
        nav2.tabBarItem = .init(
            title: "Locations",
            image: UIImage(systemName: "location.square"),
            tag: 2
        )
        nav3.tabBarItem = .init(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 3
        )
        nav4.tabBarItem = .init(
            title: "Settings",
            image: UIImage(systemName: "gearshape"),
            tag: 4
        )
        
        let collections = [nav1, nav2, nav3, nav4]
        for nav in collections {
            
            nav.navigationBar.prefersLargeTitles = true
//            nav.navigationItem.largeTitleDisplayMode = .automatic
        }
        setViewControllers(collections, animated: true)
    }
}

