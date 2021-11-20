//
//  HawaiiView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct HawaiiView: View {
    var body: some View {
        List {
            Image("hawaii")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding()

            Section(header: Label("Flights", systemImage: "airplane")) {
                Label("UA 1175", systemImage: "airplane.departure")
                Label("UA 724", systemImage: "airplane.arrival")
            }
            
            Section(header: Label("Hotels", systemImage: "house")) {
                Label("Moana Surfrider", systemImage: "bed.double")
            }
            
            Section(header: Label("Car Rentals", systemImage: "car")) {
                Label("Jeep Wrangler", systemImage: "car")
            }
        }
        .navigationTitle("Hawaii")
    }
}

struct HawaiiView_Previews: PreviewProvider {
    static var previews: some View {
        HawaiiView()
    }
}
