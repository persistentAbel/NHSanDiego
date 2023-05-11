//
//  MapUIView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/10/23.
//

import SwiftUI

struct MapUIView: View {
    var body: some View {
        VStack{
            Text("Welcome to MapUIView!")
                .font(.largeTitle)
                .padding()
            Text("Features to add")
                .font(.headline)
            Text("- San Diego's Neighborhood Cities marked")
            Text("Using Mapkit(Firebase?) location saved")
            
            Text("- User's location")
            
        }
        
    }
}

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView()
    }
}
