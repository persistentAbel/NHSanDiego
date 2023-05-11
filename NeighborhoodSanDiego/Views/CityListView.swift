//
//  CityListView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/1/23.
//

import SwiftUI

struct CityListView: View {
    
    @EnvironmentObject var model:CityModel
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack (alignment: .leading) {
                        ForEach(model.cities) { c in
                            
                            NavigationLink (destination: CityDetailView(city:c),
                                            label: {
                                HStack {
                                    Image(c.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    Text(c.city)
                                        .foregroundColor(.black)
                                }
                            }
                            )
                            
                        }
                    }
                }
            }
            .navigationTitle("All Cities")
            .padding(.leading)
        }
        
    }
}

struct CityListView_Previews: PreviewProvider {
    static var previews: some View {
        CityListView()
            .environmentObject(CityModel())
    }
}
