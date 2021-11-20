//
//  MiamiView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct MiamiView: View {
    var body: some View {
        List {
            Image("miami")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding()
            
            Section(header: Label("Flights", systemImage: "airplane")) {
                Label("AA 369", systemImage: "airplane.departure")
                Label("AA 2045", systemImage: "airplane.arrival")
            }
            
            Section(header: Label("Hotels", systemImage: "house")) {
                Label("Intercontinental", systemImage: "bed.double")
            }
            
            Section(header: Label("Car Rentals", systemImage: "car")) {
                Label("Ford Mustang", systemImage: "car")
            }
        }
        .navigationTitle("Hawaii")
    }
}

struct MiamiView_Previews: PreviewProvider {
    static var previews: some View {
        MiamiView()
    }
}
