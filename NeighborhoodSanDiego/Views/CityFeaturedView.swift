//
//  CityFeaturedView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/1/23.
//

import SwiftUI

struct CityFeaturedView: View {
    var body: some View {
        VStack{
            Text("Welcome to Photo Slide Viewer!")
                .font(.largeTitle)
                .padding()
            Text("Features to add")
                .font(.headline)
            Text("- Swipeable view of city photos")
            Text("- ")
            
            Text("- ")
            
        }
    }
}

struct CityFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        CityFeaturedView()
            .environmentObject(CityModel())
    }
}
