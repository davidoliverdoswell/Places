//
//  Place.swift
//  Places
//
//  Created by David Oliver Doswell on 7/26/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

struct Place {
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = (latitude, longitude)
    }
    
    var name: String
    var location: (latitude: Double, longitude: Double)
    
}
