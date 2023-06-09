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
                
                // MARK: City Title
                Text(city.city)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.top], 0)
                
                // MARK: City Image
                Image(city.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)

                
                // MARK: About Section
                VStack(alignment: .leading) {
                    Text("About")
                        .font(.title2)
//                        .fontWeight(.bold)
                        .padding(.leading, 0)
                        .padding(.top, 0)
                        .padding(.bottom, 10)
                    
                    Text(city.about)
                }
                .padding()
                
                // MARK: Divider
                Divider()
                
                // MARK: Fun Facts
                VStack(alignment: .leading) {
                    Text("Fun Facts")
                        .font(.title2)
                        .padding(.leading, 0)
                        .padding(.top, 0)
                        .padding(.bottom, 10)
                        ForEach (city.funFacts, id: \.self) { index in
                            Text( "• " + index)
                        }
                        .padding(.bottom)
                }
                .padding()
            }
        }
        
        
    }
}

struct CityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy city and pass it into the detail view so that we can see a preview
        let model = CityModel()
        
        CityDetailView(city: model.cities[6])
    }
}
