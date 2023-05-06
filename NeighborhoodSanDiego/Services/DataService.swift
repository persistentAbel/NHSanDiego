//
//  DataService.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/1/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [City] {
        
        // Parse local json file
        
        // Get a url path to the json file
                                                    // HAD PUT "recipes" INSTEAD OF "cities"
        let pathString = Bundle.main.path(forResource: "cities", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [City]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let cityData = try decoder.decode([City].self, from: data)
                
                // Add the unique IDs
                for c in cityData {
                    c.id = UUID()
                }
                
                // Return the cities
                return cityData
                
            } catch {
                // error with parsing json
                print(error)
            }
        } catch {
            // error with getting data
            print(error)
        }
        return[City]()
    }
}
