//
//  Sidebar.swift
//  SidebarDefault
//
//  Created by Scott James Remnant on 6/15/21.
//

import SwiftUI

struct Sidebar: View {
    @Binding var selection: ContentView.NavigationItem?
    
    var body: some View {
        List(selection: $selection) {
            Label("Planes", systemImage: "airplane")
                .tag(ContentView.NavigationItem.planes)
            
            Label("Trains", systemImage: "tram")
                .tag(ContentView.NavigationItem.trains)

            Label("Automobiles", systemImage: "car")
                .tag(ContentView.NavigationItem.automobiles)
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar(selection: .constant(.planes))
    }
}
