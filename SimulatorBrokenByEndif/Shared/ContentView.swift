//
//  ContentView.swift
//  Shared
//
//  Created by Scott James Remnant on 6/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .navigationTitle("Greeting")
        #if os(macOS)
            .navigationSubtitle("Earthlings")
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
