//
//  DestinationsView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct DestinationsView: View {
    var body: some View {
        List {
            NavigationLink {
                HawaiiView()
            } label: {
                Label("Hawaii", systemImage: "globe.americas")
            }
            
            NavigationLink {
                MiamiView()
            } label: {
                Label("Miami", systemImage: "globe.americas")
            }
        }
        .navigationTitle("Destinations")
    }
}

struct DestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationsView()
    }
}
