//
//  CityDetailView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/1/23.
//

import SwiftUI

struct CityDetailView: View {
    
    var city:City
    
    var body: some View {
        ScrollView {
            
            VStack {
                
                // MARK: City Image
                Image(city.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: City Title
                Text(city.city)
                
                // MARK: About Section
                VStack {
                    Text("About")
                    
                    Text(city.about)
                }
                
                // MARK: Divider
                Divider()
                
                // MARK: Fun Facts
                VStack {
                    Text("Fun Facts")

                    ForEach (0..<city.funFacts.count, id: \.self) { index in
                        Text(String(index+0) + ". " + city.funFacts[index])
                    }
                }
            }
        }
        
        
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy city and pass it into the detail view so that we can see a preview
        let model = CityModel()
        
        CityDetailView(city: model.cities[0])
    }
}
