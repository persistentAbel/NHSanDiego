//
//  Cities.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 4/15/23.
//

import Foundation

class City: Identifiable, Decodable {
    var id:UUID?
    var city:String
    var about:String
    var funFacts:[String]
    var image:String
    var attractions:[String]
    var imagePreview:Bool
    var showFunFacts:Bool
}
