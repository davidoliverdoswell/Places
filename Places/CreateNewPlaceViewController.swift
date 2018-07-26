//
//  CreateNewPlaceViewController.swift
//  Places
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class CreateNewPlaceViewController: UIViewController, PlacesPresenter {
    
    var placeController : PlaceController?
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var latitude: UITextField!
    
    @IBOutlet weak var longitude: UITextField!
    
    @IBAction func savePlace(_ sender: Any) {
        guard let  name = name.text,
        let latitudeString = latitude.text,
        let longitudeString = longitude.text,
        let latitude = Double(latitudeString),
        let longitude = Double(longitudeString) else {
            return
        }
        placeController?.createPlace(withName: name, latitude: latitude, longitude: longitude)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       }

}
