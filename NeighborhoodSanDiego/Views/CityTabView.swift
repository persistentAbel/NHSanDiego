//
//  ContentView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 4/12/23.
//

import SwiftUI

struct CityTabView: View {
        
    var body: some View {
        TabView {
            
            
            
            // MARK: First View
            MapUIView()
                .tabItem {
                    VStack {
                        Image(systemName: "mappin")
                        Text("Map")
                        
                    }
                }
            
            // MARK: Second View
            CityFeaturedView()
                .tabItem{
                    VStack {
                        Image(systemName:"camera")
                        Text("Photos")
                    }
                }
            // MARK: Third View
            CityListView()
                .tabItem{
                    VStack {
                        Image(systemName:"house")
                        Text("Home")
                    }
                }
            // MARK: Fourth View
            SettingsView()
                .tabItem{
                    VStack {
                        Image(systemName:"gearshape")
                        Text("Settings")
                    }
                }
            
            
        }
        .environmentObject(CityModel())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CityTabView()
    }
}
