//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Luana Nalon on 11/05/2021.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
