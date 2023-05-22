//
//  MapUIView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/10/23.
//

import SwiftUI
import MapKit

struct MapUIView: View {
    
    @State var tracking = MapUserTrackingMode.follow
    @StateObject var userRegion = LocationManager()
    
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(
        latitude: 32.795132,
        longitude: -117.134064), span: MKCoordinateSpan(
        latitudeDelta: 0.9,
        longitudeDelta: 1.0))
    
    // For opening URLS on the Web
    @Environment(\.openURL) var openURL
    

    
    var body: some View {
        
        VStack{
            Map(coordinateRegion: $region, interactionModes: .all,
                showsUserLocation: true, userTrackingMode: $tracking, annotationItems: MapLocations, annotationContent: { location in
                
                MapAnnotation(coordinate: location.coordinate, content: {
                        Image(systemName: "mappin").foregroundColor(.red)
                            .fontWeight(.bold)
                    Button("\(location.name)") {
                        // Would have to concatenate web url string with location.name for address
                        
                        // adding cityLocationName + web url to concatenate together
//                        var cityLocationName = location.name

                        
                        openURL(URL(string: "https://www.google.com/maps/place/")!)
                            }
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.black)
//                    Text(location.name)
//                        .foregroundColor(.black)
//                        .font(.title)
//                        .fontWeight(.black)
                    
                    
                })
                
            } )
            
        }
    }
}

struct MapUIView_Previews: PreviewProvider {
    static var previews: some View {
        MapUIView()
    }
}
