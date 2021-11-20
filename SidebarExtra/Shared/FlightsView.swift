//
//  FlightsView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct FlightsView: View {
    var body: some View {
        List {
            Section(header: Text("Hawaii")) {
                NavigationLink {
                    HawaiiView()
                } label: {
                    Label("UA 1175", systemImage: "airplane.departure")
                }
                
                NavigationLink {
                    HawaiiView()
                } label: {
                    Label("UA 724", systemImage: "airplane.arrival")
                }
            }
            
            Section(header: Text("Miami")) {
                NavigationLink {
                    MiamiView()
                } label: {
                    Label("AA 369", systemImage: "airplane.departure")
                }
                
                NavigationLink {
                    MiamiView()
                } label: {
                    Label("AA 2045", systemImage: "airplane.arrival")
                }
            }
        }
        .navigationTitle("Flights")
    }
}

struct FlightsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightsView()
    }
}
