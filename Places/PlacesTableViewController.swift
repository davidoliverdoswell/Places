//
//  PlacesTableViewController.swift
//  Places
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

protocol PlacesTableViewControllerDelegate: class {
    func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController {
    
    var placeController: PlaceController?
    
    
    /*
    THIS FUNCTION WAS NOT IMPLEMENTED ALTHOUGH
    I DO NOT REMEMBER DOING THIS BUT IT "WORKS"
     */
    
    func placeWasSelected(place: Place) {
        
    }

    // THIS WAS PROPERTY WAS SET TO `PlacesTableViewController`
    weak var delegate: VisitedPlacesViewController?

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeController?.places.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let place = placeController?.places[indexPath.row]
        cell.textLabel?.text = place?.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else { return }
        delegate?.placeWasSelected(place: place)
    }

}
