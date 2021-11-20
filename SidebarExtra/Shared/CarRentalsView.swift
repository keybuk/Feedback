//
//  CarRentalsView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct CarRentalsView: View {
    var body: some View {
        List {
            Section(header: Text("Hawaii")) {
                NavigationLink {
                    HawaiiView()
                } label: {
                    Label("Jeep Wrangler", systemImage: "car")
                }
            }
            
            Section(header: Text("Miami")) {
                NavigationLink {
                    MiamiView()
                } label: {
                    Label("Ford Mustang", systemImage: "car")
                }
            }
        }
        .navigationTitle("Car Rentals")
    }

}

struct CarRentalsView_Previews: PreviewProvider {
    static var previews: some View {
        CarRentalsView()
    }
}
