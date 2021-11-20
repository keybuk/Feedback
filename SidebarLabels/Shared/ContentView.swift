//
//  ContentView.swift
//  Shared
//
//  Created by Scott James Remnant on 6/16/21.
//

import SwiftUI

struct ContentView: View {
    enum NavigationItem: CaseIterable {
        case planes
        case trains
        case automobiles
    }

    @State var selection: NavigationItem? = .planes

    var body: some View {
        NavigationView {
            Sidebar(selection: $selection)
            DetailView(selection: $selection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
