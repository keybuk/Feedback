//
//  AppSidebar.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct AppSidebar: View {
    enum NavigationItem {
        case destinations
        case flights
        case hotels
        case carRentals
    }
    
    @State var selection: NavigationItem? = .destinations
    
    var body: some View {
        List {
            NavigationLink(destination: DestinationsView(), tag: NavigationItem.destinations, selection: $selection) {
                Label("Destinations", systemImage: "globe.americas")
            }

            NavigationLink(destination: FlightsView(), tag: NavigationItem.flights, selection: $selection) {
                Label("Flights", systemImage: "airplane")
            }
            
            NavigationLink(destination: HotelsView(), tag: NavigationItem.hotels, selection: $selection) {
                Label("Hotels", systemImage: "house")
            }
            
            NavigationLink(destination: CarRentalsView(), tag: NavigationItem.carRentals, selection: $selection) {
                Label("Car Rentals", systemImage: "car")
            }
        }
        .listStyle(.sidebar)
        .navigationTitle("Trips")
    }
}

struct AppSidebar_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebar()
    }
}
