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
                VStack(alignment: .center) {
                    Text("About")
                        .font(.title)
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
                VStack {
                    Text("Fun Facts")
                        .font(.title)
                        .padding(.leading, 0)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    VStack(alignment: .center) {
                        ForEach (0..<city.funFacts.count, id: \.self) { index in
                            Text(String(index+1) + ". " + city.funFacts[index])
                        }
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
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
