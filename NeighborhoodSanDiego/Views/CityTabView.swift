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
            CityFeaturedView()
                .tabItem{
                    VStack {
                        Image(systemName:"camera")
                    }
        }
            // MARK: Second View
            CityListView()
                .tabItem{
                    VStack {
                        Image(systemName:"house")
                    }
        }
            // MARK: Third View
//            SettingsView()
//                .tabItem{
//                    VStack {
//                        Image(systemName:"gearshape")
//                    }
//        }
            
            
        }
        .environmentObject(CityModel())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CityTabView()
    }
}
