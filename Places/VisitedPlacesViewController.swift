//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesTableViewControllerDelegate {
    
    var placeController: PlaceController?
    
    // MARK: - Properties
    var mapViewController : MapViewController!
    var placesTableViewController: PlacesTableViewController!
    
    func placeWasSelected(place: Place) {
        mapViewController.location = place.location
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tableVC = segue.destination as? PlacesTableViewController {
            placesTableViewController = tableVC
            placesTableViewController.placeController = placeController
            placesTableViewController.delegate = self
        }

        if let tableVC = segue.destination as? MapViewController {
            mapViewController = tableVC
        }
        
    }
    

}
