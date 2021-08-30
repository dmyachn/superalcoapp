//
//  TabBarController.swift
//  SuperAlcoholic
//
//  Created by dmitry on 11.07.2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchController = SearchController()
        let settingsController = SettingsController()
        
        self.setViewControllers([searchController, settingsController], animated: true)
    }


}
