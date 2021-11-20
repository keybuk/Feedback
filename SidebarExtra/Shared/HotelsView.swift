//
//  HotelsView.swift
//  SidebarLabels
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct HotelsView: View {
    var body: some View {
        List {
            Section(header: Text("Hawaii")) {
                NavigationLink {
                    HawaiiView()
                } label: {
                    Label("Moana Surfrider", systemImage: "bed.double")
                }
            }
        
            Section(header: Text("Miami")) {
                NavigationLink {
                    MiamiView()
                } label: {
                    Label("Intercontinental", systemImage: "bed.double")
                }
            }
        }
        .navigationTitle("Hotels")
    }
}

struct HotelsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelsView()
    }
}
