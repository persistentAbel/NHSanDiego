//
//  CityModel.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 4/18/23.
//

import Foundation

class CityModel: ObservableObject {
    
    @Published var cities = [City]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.cities = DataService.getLocalData()
    }
}
