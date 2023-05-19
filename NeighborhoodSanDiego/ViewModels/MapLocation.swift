//
//  MapLocation.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/17/23.
//

import UIKit
import CoreLocation

struct MapLocation: Identifiable {
    let id = UUID()
    let name:String
    let latitude:Double
    let longitude:Double
    var coordinate:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

let MapLocations = [
    MapLocation(name: "San Diego", latitude: 32.715736, longitude: -117.161087),
    MapLocation(name: "Solana Beach", latitude: 32.989262, longitude: -117.272469),
    MapLocation(name: "La Jolla", latitude: 32.832809, longitude: -117.271271),
    MapLocation(name: "Carlsbad", latitude: 33.158092, longitude: -117.350594),
    MapLocation(name: "Chula Vista", latitude: 32.640053, longitude: -117.084198),
    MapLocation(name: "Oceanside", latitude: 33.195869, longitude: -117.379486),
    MapLocation(name: "La Mesa", latitude: 32.766029, longitude: -117.022369)
]
