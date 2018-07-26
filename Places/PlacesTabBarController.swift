//
//  PlacesTabBarController.swift
//  Places
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {

    let placeController = PlaceController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            if let vc = childVC as? PlacesPresenter {
                vc.placeController = placeController
            }
        }
    }

    
}
