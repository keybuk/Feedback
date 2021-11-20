//
//  ContentView.swift
//  Shared
//
//  Created by Scott James Remnant on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            Text("Placeholder")
            Text("Detail View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
