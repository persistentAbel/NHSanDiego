//
//  SettingsView.swift
//  NeighborhoodSanDiego
//
//  Created by Abel Gomez on 5/10/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack{
            Text("Welcome to Settings!")
                .font(.largeTitle)
                .padding()
            Text("Features to add")
                .font(.headline)
            Text("- Allowing user to hide certain items")
            Text("- Turn off users location")
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
