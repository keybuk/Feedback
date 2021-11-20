//
//  ContentView.swift
//  Shared
//
//  Created by Scott James Remnant on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            NavigationView {
                AppSidebar()
                Text("Placeholder")
            }
        } else {
            NavigationView {
                AppSidebar()
//                DestinationsView()
                Text("Placeholder")
            
                Text("Detail")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
