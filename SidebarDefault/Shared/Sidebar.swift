//
//  Sidebar.swift
//  SidebarDefault
//
//  Created by Scott James Remnant on 6/15/21.
//

import SwiftUI

struct Sidebar: View {
    enum NavigationItem {
        case planes
        case trains
        case automobiles
    }
    
    @State var selection: NavigationItem? = .planes
    
    var body: some View {
        List {
            NavigationLink(destination: DetailView(title: "Planes"), tag: NavigationItem.planes, selection: $selection) {
                Label("Planes", systemImage: "airplane")
            }
            
            NavigationLink(destination: DetailView(title: "Trains"), tag: NavigationItem.trains, selection: $selection) {
                Label("Trains", systemImage: "tram")
            }

            NavigationLink(destination: DetailView(title: "Automobiles"), tag: NavigationItem.automobiles, selection: $selection) {
                Label("Automobiles", systemImage: "car")
            }
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
